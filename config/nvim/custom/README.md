# NvChad

Prerequisite: Install neovim then [NvChad](https://nvchad.github.io/)

1. make sure folder is renamed to `custom` and move it to `~/.config/nvim/lua` if you've installed nvchad. Or Symlink `ln -sf ~/.dotfiles/.config/nvim/custom ~/.config/nvim/lua/custom`
   

2. There's a bug with the search glyph and iterm2, find and replace the entire lines below:

   ```
   -- inside lua/plugins/configs/telescope.lua
    prompt_prefix = " ﰍ  ",


   -- inside lua/plugins/configs/alpha.lua
    button("SPC f f", "ﰍ  Find File  ", ":Telescope find_files<CR>"),
   ```
