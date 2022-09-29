## Homebrew

1. Install [homebrew](https://brew.sh/)

## Brewfile

2. Install brew files `brew bundle install --file=$HOME/.dotfiles/Brewfile` at the location of the Brewfile. Update Brewfile using `brew bundle dump --file=$HOME/.dotfiles/Brewfile --force`

## Symlinks

3. Symlink files in symlinks

   Example:

   ```
   ln -sf ~/.dotfiles/symlinks/git/.gitconfig ~/.gitconfig
   ln -sf ~/.dotfiles/symlinks/macos/.hushlogin ~/.hushlogin
   ln -sf ~/.dotfiles/symlinks/zsh/.zshrc ~/.zshrc
   ```

## NvChad

Prerequisite: Install neovim then [NvChad](https://nvchad.github.io/)

1. make sure folder is renamed to `custom` and move it to `~/.config/nvim/lua` if you've installed nvchad. Or Symlink `ln -sf ~/.dotfiles/.config/nvim/custom ~/.config/nvim/lua/custom`

2. There's a bug with the search glyph and iterm2, find and replace the entire lines below:

   ```
   -- inside ~/.config/nvim/lua/plugins/configs/telescope.lua
    prompt_prefix = " ﰍ  ",


   -- inside ~/.config/nvim/lua/plugins/configs/alpha.lua
    button("SPC f f", "ﰍ  Find File  ", ":Telescope find_files<CR>"),
   ```

## Mac

keyboard -> input source -> + -> other -> "Unicode Hex Input"
