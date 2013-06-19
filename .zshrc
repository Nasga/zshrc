autoload run-help
autoload -Uz compinit
compinit
autoload -Uz colors
colors

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                                           /usr/sbin /usr/bin /sbin /bin \
                                           /usr/local/share/npm/bin
# Redefine the completer behavior.
zstyle ':completion:*' completer _expand _complete _correct _approximate
# Formating and decoration.
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions': format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d.'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b.'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous false
# Completion list behavior.
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character \
                                   to insert%s
zstyle ':completion:*' select-prompt %SScrolling active: current selection at \
                                   %p%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true

# Add Hombrew to the path
export PATH=/usr/local/bin:/usr/local/sbin/:/usr/local/share/npm/bin:$PATH
export PATH="$(brew --prefix php54)/bin:$PATH"
# Keep 4k History
export HISTSIZE=SAVEHIST=4096
export HISTFILE=~/.zsh_istory
setopt hist_ignore_all_dups
setopt append_history
setopt extended_history
setopt share_history

# Silent rm *
setopt rmstarsilent

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

# Load alias
source ~/.dotfiles-zsh/alias
