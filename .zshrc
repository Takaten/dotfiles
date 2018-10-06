##### zsh options #####

# auto-completion
autoload -Uz compinit
compinit

# history settings
export HISTFILE=${HOME}/.zhistory
export HISTSIZE=1000
export SAVEHIST=100000

setopt interactivecomments
setopt no_beep

setopt auto_pushd
setopt pushd_ignore_dups

# complement with path after equal
setopt magic_equal_subst

setopt extended_glob

# parenthesis etc. auto-completion
setopt auto_param_keys

setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

##### alias #####

alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
alias cl='clear'
alias mkdir='mkdir -p'

case ${OSTYPE} in
    darwin*)
        alias ls='ls -G'
        ;;
    linux*)
        alias ls='ls --color=auto'
esac
alias la='ls -a'
alias ll='ls -l'

##### zplug #####

source ~/.zplug/init.zsh

zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-syntax-highlighting
zplug zsh-users/zsh-completions

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug "~/.zsh", from:local

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
