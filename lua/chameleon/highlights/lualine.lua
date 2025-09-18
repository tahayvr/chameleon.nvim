---@diagnostic disable: undefined-global
return function(P)
  local vim = rawget(_G, "vim")
  local theme = {}

  local function mk_sections(accent)
    return {
      a = { fg = P.bg1, bg = accent, gui = "bold" },
      b = { fg = P.fg1, bg = P.bg2 },
      c = { fg = P.uic1, bg = P.bg0 },
    }
  end

  theme.normal   = mk_sections(P.color2)
  theme.insert   = mk_sections(P.color1)
  theme.visual   = mk_sections(P.color6)
  theme.replace  = mk_sections(P.color5)
  theme.command  = mk_sections(P.color3)
  theme.terminal = mk_sections(P.color4)
  theme.inactive = {
    a = { fg = P.uic1, bg = P.bg1 },
    b = { fg = P.uic1, bg = P.bg1 },
    c = { fg = P.uic1, bg = P.bg1 },
  }

  if vim then vim.g.chameleon_lualine_theme = theme end

  -- Actively update all lualine highlight groups so colors switch without re-setup
  if vim and vim.api then
    local function set(name, spec)
      vim.api.nvim_set_hl(0, name, {
        fg = spec.fg,
        bg = spec.bg,
        bold = spec.gui == "bold" or spec.bold or false,
      })
    end
    -- Ask lualine to redraw if available, then override
      local ok, lualine = pcall(require, "lualine")
      if ok then
        local has_cfg, cfg = pcall(function()
          return lualine.get_config and lualine.get_config() or nil
        end)
        if has_cfg and cfg and type(cfg) == "table" then
          cfg.options = cfg.options or {}
          cfg.options.theme = vim.g.chameleon_lualine_theme
          pcall(lualine.setup, cfg)
        end
        if type(lualine.refresh) == "function" then
          pcall(lualine.refresh)
        end
      end
    for mode, sects in pairs(theme) do
      for secname, spec in pairs(sects) do
        set(string.format("lualine_%s_%s", secname, mode), spec)
        -- Mirror c section to x,y,z so right side updates even if theme->hl derivation differs
        if secname == "c" then
          set(string.format("lualine_x_%s", mode), spec)
          set(string.format("lualine_y_%s", mode), spec)
          set(string.format("lualine_z_%s", mode), spec)
        end
      end
    end
    vim.cmd("redrawstatus")
  end

  return theme
end