## Homebrew

1. Install [homebrew](https://brew.sh/)

## Brewfile

2. Install brew files `brew bundle install --file=$HOME/.dotfiles/Brewfile` at the location of the Brewfile. Update Brewfile using `brew bundle dump --file=$HOME/.dotfiles/Brewfile --force`

## Symlinks

3. Symlink files in symlinks

   Example:

   ```
   ln -sf .dotfiles/symlinks/git/.gitconfig .gitconfig
   ln -sf .dotfiles/symlinks/macos/.hushlogin .hushlogin
   ln -sf .dotfiles/symlinks/zsh/.zshrc .zshrc
   ```
