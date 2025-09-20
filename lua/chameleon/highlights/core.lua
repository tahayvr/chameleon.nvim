---@diagnostic disable: undefined-global

return function(P)
  local vim = rawget(_G, "vim"); if not vim then return end
  local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Core UI
  set("Normal",        { fg = P.fg1, bg = P.bg1 })
  set("NormalNC",      { fg = P.fg2, bg = P.bg1 })
  set("CursorLine",    { bg = P.bg2 })
  set("CursorLineSign", { bg = P.bg2 })
  set("StatusLine",    { fg = P.fg1, bg = P.bg2 })
  set("Visual",        { bg = P.selbg, fg = P.selfg })
  set("Comment",       { fg = P.comment, italic = true })
  set("Function",      { fg = P.color2 })
  set("Statement",     { fg = P.color6 })
  set("Type",          { fg = P.color5, bold = true })
  set("DiagnosticError", { fg = P.color1 })
  set("WinSeparator",  { fg = P.uic1, bg = P.bg1 })
  -- Float defaults (used by many UIs including notify popups depending on config)
  set("NormalFloat",   { fg = P.fg1, bg = P.bg2 })
  set("FloatBorder",   { fg = P.uic1, bg = P.bg2 })
  set("FloatTitle",    { fg = P.color2, bg = P.bg2, bold = true })

  -- Basic search/UI accents
  set("Search",        { fg = P.bg1, bg = P.color3 })
  set("IncSearch",     { fg = P.bg1, bg = P.color2 })
  set("LineNr",        { fg = P.fg3 })
  set("CursorLineNr",  { fg = P.color2, bold = true })

  -- Popup/Menu
  set("Pmenu",         { fg = P.fg2, bg = P.bg2 })
  set("PmenuSel",      { fg = P.fg1, bg = P.bg3 })
  set("PmenuSbar",     { bg = P.bg2 })
  set("PmenuThumb",    { bg = P.fg3 })

  -- Legacy Vim syntax groups (fallback when not using Treesitter/LSP)
  set("Identifier",    { fg = P.fg1 })
  set("Constant",      { fg = P.color3 })
  set("String",        { fg = P.color5 })
  set("Character",     { fg = P.color3 })
  set("Number",        { fg = P.color3 })
  set("Boolean",       { fg = P.color3 })
  set("Float",         { fg = P.color3 })
  set("Keyword",       { fg = P.color2 })
  set("Operator",      { fg = P.color2 })
  set("PreProc",       { fg = P.color6 })
  set("Include",       { fg = P.color6 })
  set("Define",        { fg = P.color2 })
  set("Macro",         { fg = P.color2 })
  set("TypeDef",       { fg = P.color4 })
  set("Special",       { fg = P.color6 })
  set("Delimiter",     { fg = P.fg1 })
  set("MatchParen",    { bg = P.bg3, bold = true })
  set("Error",         { fg = P.bg1, bg = P.color1, bold = true })
  set("Todo",          { fg = P.bg1, bg = P.color3, bold = true })
end
