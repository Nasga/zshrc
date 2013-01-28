autoload run-help
autoload -Uz compinit
compinit
autoload -Uz colors
colors

# Add Hombrew to the path
export PATH=/usr/local/bin:/usr/local/sbin/:$PATH
# Keep 4k History
export HISTSIZE=4096

# Prompt
fg[red]="[38;5;196m"
fg[lightgreen]="[38;5;112m"
fg[grey]="[38;5;102m"
fg[blue]="[38;5;32m"
fg[darkgrey]="[38;5;240m"

POMPT_BEFORE="
"
PROMPT_STATUS="%(?.%{$fg[lightgreen]%}✔.%{$fg[red]%}✖) "
PROMPT_HOST="%{$fg[grey]%}%n@%m "
# PROMPT_PWD="%20<…<%/% >"
PROMPT_PWD="%{$fg[black]%}%{$bg[black]%}%{$fg[blue]%} %20<… <%/%<< %{$fg[blue]$bg[black]%}➤ "

export PROMPT=$PROMPT_BEFORE$PROMPT_STATUS$PROMPT_HOST$PROMPT_PWD
export RPROMPT="%{$fg[darkgrey]%}%T%{$reset_color%}"

