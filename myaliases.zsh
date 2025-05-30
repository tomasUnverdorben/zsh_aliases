# Set Windows USERPROFILE for WSL
export USERPROFILE='C:\\Users\\'"$USER"

# Existing Aliases and Custom Commands
alias aliases="nano ~/.oh-my-zsh/custom/myaliases.zsh"
alias cotuzeremisto="du -ckhs ./* | sort -h"
alias week='date +%V'
alias cls="clear"
alias weather="curl -s wttr.in/brno"

# Linux Shortcuts
alias ll='ls -lah'

# Faster Directory Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias code="code ."
alias cdga='cd $(/usr/bin/wslpath '\''C:\GitLab\ansible-playbooks'\'')'
alias cdg='cd $(/usr/bin/wslpath '\''C:\GitLab'\'')'
alias cdp='cd $(/usr/bin/wslpath '\''C:\Projects'\'')'
alias cdd='cd "$(wslpath "$USERPROFILE\\Downloads")"'
alias c='clear && ls'

# Git Shortcuts
alias gc="git clone"
alias gs="git status"
alias ga="git add ."
alias gcmsg="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gco="git checkout"
alias gb="git branch"
alias gca="git commit --amend"
alias gnb="git switch -c"

# Kubernetes Shortcuts
alias k="kubectl"
alias kns="kubectl config set-context --current --namespace"
alias kx="kubectl exec -it"
alias kgp="kubectl get pods"
alias kgs="kubectl get svc"
alias kdp="kubectl describe pod"
alias klogs="kubectl logs -f"

# Docker Shortcuts
alias d="docker"
alias dc="docker-compose"
alias dps="docker ps"
alias di="docker images"
alias dbuild="docker build . -t"
alias dexec="docker exec -it"
alias drm="docker rm $(docker ps -a -q)"
alias drmi="docker rmi $(docker images -q)"

# Useful Functions
b64() { echo -n "$1" | base64 }
b64d() { echo -n "$1" | base64 -d }
explore() { explorer.exe . }
mkcd() { mkdir -p "$1" && cd "$1"; }
extract() { tar -xvf "$1"; }
reload-zsh() { source ~/.zshrc; echo "ZSH reloaded!"; }
ips() { hostname -I | awk '{print $1}'; }
glog5() {
  git log --oneline --graph --decorate --all -n 5
}
glog10() {
  git log --oneline --graph --decorate --all -n 10
}
glog20() {
  git log --oneline --graph --decorate --all -n 20
}
gdiff() { git diff --cached; }
gundo() { git reset --soft HEAD~1; }

# Backup
alias backup-zshrc='cp ~/.zshrc ~/.zshrc.backup && echo ".zshrc backed up!"'

# Color-Coded Prompt
PROMPT='%F{cyan}%n@%m %F{yellow}%~ %F{green}$ %f'
