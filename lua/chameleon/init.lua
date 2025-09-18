---@diagnostic disable: undefined-global, undefined-field

local M = {}

function M.setup(opts)
  opts = opts or {}
  if opts.system then
    require("chameleon.system").setup(opts.system)
  end
end

local vimref = rawget(_G, "vim")
if vimref and vimref.api then
  vimref.api.nvim_create_user_command("ChameleonReloadSystemTheme", function()
    local ok, system = pcall(require, "chameleon.system")
    if ok then
      system.reload_now()
    else
      vimref.notify("chameleon system module not loaded", vimref.log.levels.WARN)
    end
  end, {})
end

return M