
# zash+ v0.7 - zsh i.t.s.o bash

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
if [[ $UID == 0 || $EUID == 0 ]]; then
PROMPT='%n@%m ${PWD/#$HOME/~} ${vcs_info_msg_0_} %# '
RPROMPT='%t, %(?.Y.X)'
else
PROMPT='%F{green}%n@%m%f %F{cyan}${PWD/#$HOME/~}%f %F{red}${vcs_info_msg_0_}%f %# '
RPROMPT='%t, %(?.%{$fg[green]%}Y%f.%{$fg[red]%}X%f)'
fi
