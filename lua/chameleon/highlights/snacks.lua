return function(p)
    local vim = rawget(_G, "vim"); if not vim then return end

    -- Dashboard
    vim.api.nvim_set_hl(0, "SnacksDashboard", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = p.fg3, bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = p.fg3, italic = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = p.color2, bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = p.fg2 })
    vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = p.fg2 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = p.color3, bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksDashboardSpecial", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksDashboardRecentFiles", { fg = p.fg2 })
    vim.api.nvim_set_hl(0, "SnacksDashboardShortcut", { fg = p.color5 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminal", { fg = p.fg3 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalBorder", { fg = p.fg3 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalTitle", { fg = p.fg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInput", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputBorder", { fg = p.fg3 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearch", { fg = p.color3 })
    vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearchBorder", { fg = p.fg3 })

    -- Picker
    vim.api.nvim_set_hl(0, "SnacksPicker", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = p.color2, bg = p.bg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksPickerIcon", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksPickerIconDir", { fg = p.color3 })
    vim.api.nvim_set_hl(0, "SnacksPickerIconFile", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = p.color3, bold = true })
    vim.api.nvim_set_hl(0, "SnacksPickerCursor", { fg = p.bg1, bg = p.color6 })
    vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { bg = p.bg2 })
    vim.api.nvim_set_hl(0, "SnacksPickerPreview", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { fg = p.color5, bg = p.bg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksPickerList", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { fg = p.color4, bg = p.bg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = p.color3, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = p.uic1, bg = p.bg1 })

    -- Notifier
    vim.api.nvim_set_hl(0, "SnacksNotifier", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitle", { fg = p.color2, bold = true })
    vim.api.nvim_set_hl(0, "SnacksNotifierIcon", { fg = p.color4 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBody", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { fg = p.fg2 })
    vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksNotifierError", { fg = p.color1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { fg = p.uic1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { fg = p.color6 })
    vim.api.nvim_set_hl(0, "SnacksNotifierMinimal", { fg = p.fg3, bg = p.bg1, italic = true })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderTrace", { fg = p.color6, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderDebug", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderError", { fg = p.color1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderWarn", { fg = p.color2, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderInfo", { fg = p.color2, bg = p.bg1 })

    -- Terminal
    vim.api.nvim_set_hl(0, "SnacksTerminal", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksTerminalTitle", { fg = p.color3, bg = p.bg1, bold = true })

    -- Input
    vim.api.nvim_set_hl(0, "SnacksInput", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksInputBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksInputTitle", { fg = p.color3, bg = p.bg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksInputIcon", { fg = p.color4 })

    -- Indent
    vim.api.nvim_set_hl(0, "SnacksIndent", { fg = p.uic1 })
    vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = p.color6 })

    -- Explorer
    vim.api.nvim_set_hl(0, "SnacksExplorer", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { fg = p.color2, bg = p.bg1, bold = true })
    vim.api.nvim_set_hl(0, "SnacksExplorerDir", { fg = p.color3, bold = true })
    vim.api.nvim_set_hl(0, "SnacksExplorerFile", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksExplorerLink", { fg = p.color5, underline = true })
    vim.api.nvim_set_hl(0, "SnacksExplorerIcon", { fg = p.fg2 })
    vim.api.nvim_set_hl(0, "SnacksExplorerIconDir", { fg = p.color3 })
    vim.api.nvim_set_hl(0, "SnacksExplorerIconFile", { fg = p.fg1 })
    vim.api.nvim_set_hl(0, "SnacksExplorerIconLink", { fg = p.color5, underline = true })
    vim.api.nvim_set_hl(0, "SnacksExplorerGitAdded", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksExplorerGitModified", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksExplorerGitDeleted", { fg = p.color1 })
    vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnored", { fg = p.uic1 })

    -- Scroll
    vim.api.nvim_set_hl(0, "SnacksScroll", { fg = p.color6, bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksScrollThumb", { bg = p.uic1 })

    -- Zen mode
    vim.api.nvim_set_hl(0, "SnacksZen", { fg = p.fg1, bg = p.bg1 })

    -- Words (LSP references)
    vim.api.nvim_set_hl(0, "SnacksWords", { bg = p.selbg, underline = true })

    -- Dim (inactive code)
    vim.api.nvim_set_hl(0, "SnacksDim", { fg = p.uic1 })

    -- Scratch
    vim.api.nvim_set_hl(0, "SnacksScratch", { fg = p.fg1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksScratchBorder", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksScratchTitle", { fg = p.color4, bg = p.bg1, bold = true })

    -- Statuscolumn
    vim.api.nvim_set_hl(0, "SnacksStatusColumn", { fg = p.uic1, bg = p.bg1 })
    vim.api.nvim_set_hl(0, "SnacksStatusColumnNumber", { fg = p.uic1 })
    vim.api.nvim_set_hl(0, "SnacksStatusColumnRelNumber", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksStatusColumnGitAdd", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksStatusColumnGitChange", { fg = p.color2 })
    vim.api.nvim_set_hl(0, "SnacksStatusColumnGitDelete", { fg = p.color1 })

    -- Backdrop
    vim.api.nvim_set_hl(0, "SnacksBackdrop", { fg = p.color1 })
end
