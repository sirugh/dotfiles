#!/bin/sh
if command -v hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl="git log --graph --decorate --oneline --abbrev-commit"
alias gla="glg --all"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gb="git branch -vv --sort=-committerdate --format='%(align:20)%(color:green)%(committerdate:relative)%(color:reset)%(end)%(align:'$(($(tput cols) - 30))')%(color:yellow)%(refname:short)%(color:reset)%(color:blue)[%(upstream:trackshort)]%(color:reset)%(end) %(align:20,right)%(color:white)%(authorname)%(color:reset)%(end)'"
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'
alias gc='git commit -s -m'
alias gca='git commit -s -a'
alias gco='git checkout'
alias gcam='git commit -s -a -m'
alias gcp='git cherry-pick'
alias grb='git rebase'
alias grbi='git rebase -i'
alias gs='git status -sb'
alias glnext='git log --oneline $(git describe --tags --abbrev=0 @^)..@'

if command -v svu >/dev/null 2>&1; then
	alias gtpatch='echo `svu p`; git tag `svu p`'
	alias gtminor='echo `svu m`; git tag `svu m`'
fi

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}
