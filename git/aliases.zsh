#!/bin/sh
if command -v hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl="git log --graph --decorate --oneline --abbrev-commit"
alias gla="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gpn='git push origin HEAD --no-verify'
alias gd='git diff'
alias gb='git branch -v'
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
