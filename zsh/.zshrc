export EDITOR=vim
export ZSH=$HOME/.oh-my-zsh

plugins=(git kubectl)

ZSH_THEME="robbyrussell"
HIST_STAMPS="mm/dd/yyyy"

setopt share_history
setopt inc_append_history

source $ZSH/oh-my-zsh.sh

if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/google-cloud-sdk/completion.zsh.inc'; fi
