eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd)"
op completion fish | source
#source ~/.config/op/plugins.sh

alias dockerclean='docker rm $(docker ps -a -q); docker rmi $(docker images -q); docker volume rm $(docker volume ls -f dangling=true -q)'
alias dc='docker compose'
alias ls='eza -lh --group-directories-first'
alias l='eza --git-ignore --group-directories-first'
alias ll='eza --all --header --long --group-directories-first'
alias llm='eza --all --header --long --sort=modified --group-directories-first'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'
alias g='git'
alias d='docker'
alias lzg='lazygit'
alias lzd='lazydocker'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias n='nvim'
alias vim='nvim'
alias exa='eza'

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(starship init fish)"
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_add_path -a /Users/roderik/.foundry/bin
