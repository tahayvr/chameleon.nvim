# chameleon.nvim

Live system theme switching for Neovim using a symlink + SIGUSR1, with modular highlight integrations and a strict palette schema.

## Palette schema

Each theme’s colors.lua must either:

- return a table with `palette = { ... }`, or
- return the palette table directly.

Required keys:

- bg0, bg1, bg2, bg3
- fg0, fg1, fg2, fg3
- selbg, selfg, comment
- color1, color2, color3, color4, color5, color6
- uic1

Example:

```lua
return {
  -- BACKGROUND LAYERS (dark → lighter).
  bg0 = "#0A0A12",
  bg1 = "#0F0F19",
  bg2 = "#181824",
  bg3 = "#202034",

  -- FOREGROUND LAYERS (bright → muted).
  fg0 = "#F8F8FF",
  fg1 = "#EDEDFE",
  fg2 = "#BDBDE6",
  fg3 = "#8C8CB8",

  -- SELECTION & Comments
  selbg  = "#2B2B44",
  selfg  = "#EDEDFE",
  comment = "#7575A3",

  -- ACCENT COLORS (semantic roles in syntax + UI)
  color1 = "#FF3366",
  color2 = "#00F59B",
  color3 = "#FFEA00",
  color4 = "#33A1FF",
  color5 = "#FF66F6",
  color6 = "#3CFFED",

  -- UI / DECORATIVE
  uic1 = "#5A5A88",
}
```

## System integration

- Active theme symlink. eg: `~/.config/omarchy/current/theme -> ~/.config/omarchy/themes/<name>`
- Switch theme and signal Neovim:

```bash
ln -sfn ~/.config/omarchy/themes/kanagawa ~/.config/omarchy/current/theme
pkill -SIGUSR1 nvim
```

## Neovim setup

```lua
return {
  {
    dir = vim.fn.expand("~/Developer/chameleon.nvim"),
    lazy = false,
    priority = 1000,
    config = function()
      require("chameleon").setup({
        system = {
          symlink_path = vim.fn.expand("~/.config/omarchy/current/theme"),
          debounce_ms = 100,
          notify = true,
        },
      })
    end,
  },
}
```

## Modules

- Highlights are modular: see `lua/chameleon/highlights/*.lua`
- The palette is passed to each integration

## License

MIT
