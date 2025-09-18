---@diagnostic disable: undefined-global, undefined-field

-- This module orchestrates applying all highlights using the shared palette.
-- Each integration module must export: return function(P) ... end
local integrations = {
  "core",
  "treesitter",
  "noice",
  "notify",
  "snacks",
  "todo-comments",
  "neotree",
  "lualine",
  -- add more here in the order you want applied
}

local M = {}

function M.apply(palette)
  -- Each integration is a function(colors_or_palette) -> ()
  for _, mod in ipairs(integrations) do
    local ok, fn = pcall(require, "chameleon.highlights." .. mod)
    if ok then
      if type(fn) == "function" then
        fn(palette)
      end
    end
  end
end

return M