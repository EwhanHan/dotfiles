# >>> p10k >>>
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  brew
  npm
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
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
alias brewup='brew update; brew upgrade; brew cleanup; brew autoremove; brew doctor;nuc;cacheclear;'
alias zshconfig="code $HOME/.dotfiles/symlinks/zsh/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias cachesize="du -sh ~/Library/Caches/"
alias cacheclear="rm -r ~/Library/Caches/*"
alias clearnpm="nvm cache clear; npm cache clear --force"
alias cachenav="cd ~/Library/Caches/ && open ."

alias buc="brew cu -y --no-quarantine"
alias bup="brew bundle dump --file=$HOME/.dotfiles/Brewfile --force"

alias addspacer="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock"
alias pip="pip3"
alias cleanpip="pip3 freeze | xargs pip3 uninstall -y"
alias nuc='npx npm-check --global --update --cacheClear'
# <<< Custom alias <<<
