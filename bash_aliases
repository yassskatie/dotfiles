# git add
alias gad='git add .'

# git branch
alias gb='git branch'
__git_complete gb _git_branch

# git checkout
alias gco='git checkout'
__git_complete gco _git_checkout

# git commit
alias gcd='GIT_COMMITTER_DATE="`date -R`" git commit --amend --no-edit --date "`date -R`"'
alias gce='git commit -am'
alias gcm='git commit -m'
alias gcv='git commit -v'

# git diff
alias gd='git d'
__git_complete gd _git_diff
alias gdm='git d master...`git rev-parse --abbrev-ref HEAD`'
alias gds='git d --staged'
alias gdo='git d --name-only | xargs atom'

# git fetch
alias gf='git fetch'

# git log
alias glm='git lg master..`git rev-parse --abbrev-ref HEAD`'
alias gll='git log --pretty=short -u -L'

# git push
alias gp='git push'
alias gpu='git push -u origin'

# git status
alias gs='git s'
__git_complete gs _git_status

# git tools
alias git-delete-merged='git checkout master && git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'


# psql Aliases
function pskill() { psql -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '$1' AND pid <> pg_backend_pid();" ;}

# fix Alialises
alias fix-airplay="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"
alias fix-postgres="rm /usr/local/var/postgres/postmaster.pid"

# server Aliases
alias ssh-copykey='pbcopy < ~/.ssh/id_rsa.pub'

alias tower='gittower'

alias ssh_list='cat ~/.ssh/config | grep "Host " | sed "s/Host//g"'
