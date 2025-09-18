# chameleon.nvim

Live system theme switching for Neovim using a symlink + SIGUSR1, with modular highlight integrations and a strict palette schema.

## Palette schema

Each theme’s neovim.lua must either:

- return a table with `palette = { ... }`, or
- return the palette table directly.

Required keys:

- bg1, bg2, bg3
- fg1, fg2, fg3
- selbg, selfg, comment
- color1, color2, color3, color4, color5, color6
- uic1

Example:

```lua
return {
  -- BACKGROUND LAYERS (dark → lighter).
  bg1 = "#0F0F19",
  bg2 = "#181824",
  bg3 = "#202034",

  -- FOREGROUND LAYERS (bright → muted).
  fg1 = "#EDEDFE",
  fg2 = "#BDBDE6",
  fg3 = "#8C8CB8",

  -- SELECTION
  selbg  = "#2B2B44",
  selfg  = "#EDEDFE",

  -- COMMENTS
  comment = "#7575A3",

  -- ACCENT COLORS (syntax + UI)
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

Add to your nvim config `~/.config/nvim/lua/plugins.lua`:

```lua
return {
  {
    "tahayvr/chameleon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("chameleon").setup({
        system = {
          symlink_path = vim.fn.expand("~/.config/omarchy/current/theme"),
          debounce_ms = 100,
          notify = false,
        },
      })
    end,
  },
}
```

### Setup breakdown

- `"tahayvr/chameleon.nvim"`: Plugin repository (GitHub). Replace with a local `dir = ...` entry when developing the plugin locally.
- `lazy = false`: Load immediately at startup so the palette + highlight groups initialize before other UI plugins. If you defer loading, some plugins may capture default highlights first.
- `priority = 1000`: Ensures this colors/highlight provider runs before most others (higher number = earlier for many plugin managers). Adjust only if you have another colorscheme that must come first.
- `config = function() ... end`: Runtime configuration hook where the plugin is initialized. You can place additional highlight overrides after `require("chameleon").setup(...)` if needed.
- `system.symlink_path`: Absolute (or expanded) path to the active theme symlink. The plugin reads this target to load the palette. Update this if your dotfiles use a different location.
- `system.debounce_ms`: Milliseconds to debounce rapid successive `SIGUSR1` signals (e.g. if your theme switch script fires multiple times). Prevents redundant reloads.
- `system.notify`: When `true`, emits a small notification (via `vim.notify`) on successful theme reload. Set to `false` for silent operation.

Additional notes:

- Sending `SIGUSR1` (`pkill -SIGUSR1 nvim`) triggers a reload: the plugin re-resolves the symlink target, rebuilds highlights, and reapplies integrations.
- If the symlink points to an invalid theme or palette validation fails, the plugin will fall back gracefully (and optionally notify you).

## Modules

- Highlights are modular: see `lua/chameleon/highlights/*.lua`
- The palette is passed to each integration

## License

MIT
