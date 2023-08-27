# sweetie.nvim

A clean, delightful and highly customizable Neovim colorscheme written in Lua that
includes [extra themes](./extras) for other software like Kitty and WezTerm terminal
emulators.

Sweetie has a great contrast that is friendly with your eyes, every color was selected
by hand after a long day testing different colors one by one and comparing them.

> sweetie.nvim requires at least Neovim `>= 0.7.2` in order to work!

---

<p align="center">dark variant</p>

![dark variant demo](https://user-images.githubusercontent.com/36456999/223959884-0d2b3fc3-a8a9-4fff-a5ed-08dec742b68a.png)

<p align="center">light variant</p>

![light variant demo](https://user-images.githubusercontent.com/36456999/223960365-f47e7457-9fc2-4a18-8b1d-bc297ed73be7.png)

## Installation

- `packer.nvim`:
```lua
use("NTBBloodbath/sweetie.nvim")
```

- `lazy.nvim`:
```lua
require("lazy").setup({
  { "NTBBloodbath/sweetie.nvim" }
})
```

## Usage

Just set the colorscheme in your configuration:
```lua
vim.cmd.colorscheme("sweetie")
```

> If you want to use light variant you can just change your `background` Neovim option to `light`.

You can customize sweetie by using the `vim.g.sweetie` table, too. Please note that you should
call it before setting up sweetie as your colorscheme.
```lua
--- Default configuration
vim.g.sweetie = {
  -- Pop-up menu pseudo-transparency
  -- It requires `pumblend` option to have a non-zero value
  pumblend = {
    enable = true,
    transparency_amount = 20,
  },
  -- Override default sweetie color palettes
  -- Palette fields:
  --  bg
  --  fg
  --  bg_hl 
  --  bg_alt
  --  fg_alt
  --  grey
  --  dark_grey
  --  red
  --  orange
  --  green
  --  teal
  --  yellow
  --  blue
  --  magenta
  --  violet
  --  cyan
  palette = {
    dark = {},
    light = {},
  },
  -- Override default highlighting groups options
  overrides = {},
  -- Custom plugins highlighting groups
  integrations = {
    lazy = true,
    neorg = true,
    neogit = true,
    neomake = true,
    telescope = true,
  },
  -- Enable custom cursor coloring even in terminal Neovim sessions
  cursor_color = true,
  -- Use sweetie's palette in `:terminal` instead of your default terminal colorscheme
  terminal_colors = true,
}
```

If you want to override any highlighting group, you can use the `overrides` field in
the configuration table. For example, to disable italics in the colorscheme:
```lua
overrides = {
  Comment = { italic = false },
  CommentBold = { italic = false },
  Keyword = { italic = false },
  Boolean = { italic = false },
  Class = { italic = false },
  -- Optional, just if you use Java and you do not want some extra italics
  -- ["@type.java"] = { italic = false },
  -- ["@type.qualifier.java"] = { italic = false },
}
```

> Every `overrides` field accept all the `:h nvim_set_hl` parameters.

## Roadmap

- [x] Add light theme variant
- [x] Allow to override default color palette
- [ ] Add more extra themes
  - [ ] bat
  - [x] termux
  - [ ] fish shell
  - [x] florisboard
  - [x] windows terminal

## License

As always, this project is licensed under [GPLv3](./LICENSE) license.
