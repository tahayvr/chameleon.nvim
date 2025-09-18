---@diagnostic disable: undefined-global
return function(P)
  local vim = rawget(_G, "vim"); if not vim then return end

  local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Base background for notification windows and a generic border
  set("NotifyBackground", { bg = P.bg2, fg = P.fg1 })
  set("NotifyBorder", { fg = P.uic1, bg = P.bg2 })

  -- Severity → accent mapping
  local sev = {
    ERROR = P.color1,
    WARN  = P.color3,
    INFO  = P.color2,
    DEBUG = P.fg2,
    TRACE = P.color6,
  }

  for name, col in pairs(sev) do
    -- Prefer colored borders per severity for clearer theming
    set("Notify" .. name .. "Border", { fg = col, bg = P.bg2 })
    set("Notify" .. name .. "Icon",   { fg = col, bg = P.bg2 })
    set("Notify" .. name .. "Title",  { fg = col, bg = P.bg2, bold = true })
    set("Notify" .. name .. "Body",   { fg = P.fg1, bg = P.bg2 })
  end
end
