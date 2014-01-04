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
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
if [ -e /usr/local/freeswitch ]; then
  export PATH=/usr/local/freeswitch/bin:$PATH
fi
if [ -e /usr/local/bin/brew ]; then
  export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"
fi
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
POMPT_BEFORE="
"
PROMPT_STATUS="%(?.%{$fg[green]%}✔.%{$fg[red]%}✖) "
PROMPT_HOST="%{$fg_bold[grey]%}%n@%m "
PROMPT_PWD="%{$fg[black]%}%{$fg[blue]%} %20<… <%/%<< %{$fg[blue]%}❯ "

export PROMPT=$PROMPT_BEFORE$PROMPT_STATUS$PROMPT_PWD
export RPROMPT="%{$fg_bold[grey]%}%n@%m%{$reset_color%}"


# Vim bindings
bindkey -v

# Load alias
source ~/.dotfiles-zsh/alias
