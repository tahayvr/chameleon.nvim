---@diagnostic disable: undefined-global, undefined-field

local vim = rawget(_G, "vim") or {}
local uv = (vim and vim.loop) or require("uv")
local util = require("chameleon.util")
local M = {}

local SIGNAL_USR1 = (uv.os_uname and uv.os_uname().sysname == "Darwin") and 30 or 10

local config = {
  symlink_path = vim.fn.expand("~/.config/omarchy/current/theme"),
  debounce_ms  = 80,
  notify       = true,
}

local state = { signal_handle = nil, timer = nil, last_theme_path = nil }

local function join(a, b)
  if a:sub(-1) == "/" then return a .. b end
  return a .. "/" .. b
end

local function get_symlink_target()
  local stat = uv.fs_lstat(config.symlink_path)
  if not stat or stat.type ~= "link" then return nil end
  local target = uv.fs_readlink(config.symlink_path)
  if not target then return nil end
  if not target:match("^/") then
    local parent = config.symlink_path:match("(.+)/[^/]+$")
    target = join(parent, target)
  end
  target = target:gsub("/+$", "")
  return target
end

local function load_palette(theme_path)
  local path = join(theme_path, "neovim.lua")
  local ok, mod = pcall(dofile, path)
  if not ok then
    return nil, ("Error loading %s: %s"):format(path, tostring(mod))
  end
  local palette, perr = util.extract_palette(mod)
  if not palette then
    return nil, ("%s (%s)"):format(perr or "Invalid theme module", path)
  end
  return palette, nil
end

local function apply_palette(palette)
  local core = require("chameleon.core")
  if type(core.apply) == "function" then
    core.apply(palette)
  end
end

local function do_reload()
  local theme_path = get_symlink_target()
  if not theme_path or theme_path == state.last_theme_path then return end

  local palette, err = load_palette(theme_path)
  if not palette then
    if config.notify then
      vim.schedule(function()
        vim.notify("chameleon: " .. (err or "Failed to load palette"), vim.log.levels.ERROR)
      end)
    end
    return
  end

  vim.schedule(function()
    apply_palette(palette)
    state.last_theme_path = theme_path
    if config.notify then
      vim.notify("chameleon: Switched to " .. theme_path)
    end
  end)
end

local function debounce_reload()
  if not state.timer then state.timer = uv.new_timer() end
  state.timer:stop()
  state.timer:start(config.debounce_ms, 0, function()
    vim.schedule(do_reload)
  end)
end

function M.setup(user_config)
  config = vim.tbl_extend("force", config, user_config or {})
  if state.signal_handle then
    state.signal_handle:stop()
    state.signal_handle:close()
    state.signal_handle = nil
  end
  state.signal_handle = uv.new_signal()
  state.signal_handle:start(SIGNAL_USR1, debounce_reload)
  do_reload()
end

function M.reload_now()
  do_reload()
end

function M.teardown()
  if state.signal_handle then
    state.signal_handle:stop()
    state.signal_handle:close()
    state.signal_handle = nil
  end
  if state.timer then
    state.timer:stop()
    state.timer:close()
    state.timer = nil
  end
end

return M