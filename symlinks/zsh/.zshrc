# >>> p10k >>>
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  node
  vscode
  brew
  npm
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
  vscode
  dotenv
  copypath
  alias-finder
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# <<< p10k <<<

# >>> NVM >>>
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# <<< NVM <<<

# >>> Custom Alias >>>
alias brewup='brew update; brew upgrade; brew cleanup; brew autoremove; brew doctor;'
alias zshconfig="code $HOME/.dotfiles/symlinks/zsh/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cachesize="du -sh ~/Library/Caches/"
alias cacheclear="rm -r ~/Library/Caches/*"
alias clearnpm="nvm cache clear; npm cache clear --force"
alias cachenav="cd ~/Library/Caches/ && open ."
alias refreshenv="ln -sf $HOME/.dotfiles/symlinks/zsh/.zshrc ~/.zshrc; source ~/.zshrc"
alias viconfig="vi $HOME/dotfiles/symlinks/zsh/.zshrc"
alias caskupgrade="brew cu -y --no-quarantine"
alias addspacer="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock"
alias dumpbrew="brew bundle dump --file=$HOME/.dotfiles/Brewfile --force"
alias pip="pip3"
alias cleanpip="pip3 freeze | xargs pip3 uninstall -y"
# <<< Custom alias <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
