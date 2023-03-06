# sweetie.nvim

A clean, delightful and highly customizable Neovim colorscheme written in Lua that
includes [extra themes](./extras) for other software like Kitty terminal.

Sweetie has a great contrast that is friendly with your eyes, every color was selected
by hand after a long day testing different colors one by one and comparing them.

> sweetie.nvim requires at least Neovim `>= 0.7.2` in order to work!

![demo](https://user-images.githubusercontent.com/36456999/221467923-d7b1ff8e-7eb2-461e-a8cb-f831a15ee75c.png)

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

You can customize sweetie by using the `setup` function, too. Please note that you should
call it before setting up sweetie as your colorscheme.
```lua
--- Default configuration
require("sweetie").setup({
  pumblend = {
    enable = true,
    transparency_amount = 20,
  },
  overrides = {},
  integrations = {
    neorg = true,
    neogit = true,
    telescope = true,
  },
  terminal_colors = true,
})
```

If you want to override any highlighting group, you can use the `overrides` field in
the configuration table. For example, to disable italic comments:
```lua
overrides = {
  Comment = { italic = false },
}
```

> Every `overrides` field accept all the `:h nvim_set_hl` parameters.

## Roadmap

- [ ] Add light theme variant (WIP)
- [ ] Allow to override default color palette
- [ ] Add more extra themes
  - [ ] bat
  - [x] termux
  - [ ] fish shell
  - [x] florisboard

## License

As always, this project is licensed under [GPLv3](./LICENSE) license.
