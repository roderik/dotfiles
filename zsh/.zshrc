source /etc/zshrc

export PATH="$HOME/bin:/opt/homebrew/bin:$PATH";

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

autoload -U colors; colors

typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

if [ -x /usr/bin/dircolors ]; then
    test -r /etc/lscolors && eval "$(dircolors -b /etc/lscolors)" || eval "$(dircolors -b)"
elif [ -x /usr/local/bin/gdircolors ]; then
    test -r /etc/lscolors && eval "$(gdircolors -b /etc/lscolors)" || eval "$(gdircolors -b)"
fi

export CLICOLOR=1

if [ -x /usr/local/bin/gls ]; then
    alias ls='gls --color=auto'
elif ls --color > /dev/null 2>&1; then
    alias ls='ls --color=auto'
else
    alias ls='ls -G'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
export GREP_OPTIONS='--color=auto';

alias dockerclean='docker rm $(docker ps -a -q); docker rmi $(docker images -q); docker volume rm $(docker volume ls -f dangling=true -q)'
alias dc='docker-compose'
alias ibrew='arch -x86_64 /usr/local/bin/brew'

function kmerge() {
  KUBECONFIG=~/.kube/config:$1 kubectl config view --flatten > ~/.kube/mergedkub && mv ~/.kube/mergedkub ~/.kube/config
}

zplug "zpm-zsh/ssh"
zplug "b4b4r07/enhancd"
zplug "zpm-zsh/colorize"
zplug "dbz/kube-aliases"
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug "srijanshetty/node.plugin.zsh"
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  echo; zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  rm -f ~/.zcompdump; compinit
fi

