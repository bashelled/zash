
# zash v0.7 - zsh i.t.s.o bash
 
# Set up the prompt
if [[ $UID == 0 || $EUID == 0 ]]; then
PROMPT='%n@%m ${PWD/#$HOME/~} %# '
else
PROMPT='%F{green}%n@%m%f %F{cyan}${PWD/#$HOME/~}%f %# '
fi

# ...

# What? That's it.
