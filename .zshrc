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
POMPT_BEFORE="
"
# PROMPT_STATUS="%(?.%{$fg[lightgreen]%}✔.%{$fg[red]%}✖) "
PROMPT_STATUS="%(?.✔.✖) "
PROMPT_HOST="%n@%m "
PROMPT_PWD="%20<…<%/% >"

export PROMPT=$PROMPT_BEFORE$PROMPT_STATUS$PROMPT_HOST$PROMPT_PWD
export RPROMPT="%{$fg[grey]%}%T%{$reset_color%}"

