autoload -U compinit
compinit
RPROMPT="%F{white}[%*]%f"
source ~/.path
source ~/.zshrc


export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"


