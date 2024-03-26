# prompt
PROMPT="%F{63}tebby%f%F{171}24%f %1~ "

# aliases
# directories
alias applicationsupport='open $HOME/Library/Application\ Support'
alias ankimedia='open $HOME/Library/Application\ Support/Anki2/tebby24/collection.media'

# dotfiles
alias df='git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# configuration files
alias zshconfig='vim $HOME/.zshrc'
alias yabaiconfig='vim $HOME/.config/yabai/yabairc'
alias skhdconfig='vim $HOME/.config/skhd/skhdrc'
alias tmuxconfig='vim $HOME/.config/tmux/tmux.conf'

# chinese
alias reader='$HOME/scripts/chinese/reader/reader.sh'
alias chineseaudio='python3 $HOME/scripts/chinese/anki/savewordaudios.py'

alias asbplayer='cd $HOME/Applications/asbplayer && yarn workspace @project/client run start'

# nvim
alias vim="NVIM_APPNAME=lazyvim nvim"
alias vimconfig='cd $HOME/.config/lazyvim && vim .'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
