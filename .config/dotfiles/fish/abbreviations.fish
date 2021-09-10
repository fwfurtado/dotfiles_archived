# abbr emacs 'emc'


# git
abbr ga 'git add'

abbr gcl 'git clone'

abbr gcmsg 'git commit -m'
abbr gcam 'git commit --amend -C HEAD'
abbr gca 'git commit --amend '

abbr gpl 'git pull'
abbr gplr 'git pull --rebase'
abbr gps 'git push'
abbr gpsf 'git push -f'
abbr gpsup 'git push --set-upstream (git remote) (git rev-parse --abbrev-ref HEAD)'
abbr grv 'git remote -v'

abbr grb 'git rebase'
abbr grbo 'git rebase --onto'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbi 'git rebase -i'

abbr grs  'git reset --'
abbr grsf 'git reset --hard'

abbr gr   'git restore'
abbr grt 'git restore --staged'

abbr gs 'git status'

abbr gsh 'git stash'
abbr gshu 'git stash --include-untracked'
abbr gshl 'git stash list'
abbr gshp 'git stash pop'

abbr gsw 'git switch'
abbr gsc 'git switch -c'

abbr gb  'git branch'

abbr gt 'git tag'

# git dotfiles
abbr .ga '.g add'
abbr .gaa '.g add --all'
abbr .gap '.g add -pu'
abbr .gash '.g stash'
abbr .gashl '.g stash list'
abbr .gashp '.g stash pop'
abbr .gashu '.g stash --include-untracked'
abbr .gau '.g add -u'
abbr .gc '.g commit'
abbr .gce '.g clean'
abbr .gcef '.g clean -fd'
abbr .gcl '.g clone'
abbr .gcmsg '.g commit -m'
abbr .gdf '.g diff --'
abbr .gdnw '.g diff -w --'
abbr .gdw '.g diff --word-diff'
abbr .gf '.g fetch'
abbr .gfa '.g fetch --all'
abbr .gfr '.g fetch; and .g rebase'
abbr .glg '.g log --graph --max-count=5'
abbr .gm '.g merge'
abbr .gmff '.g merge --ff'
abbr .gmnff '.g merge --no-ff'
abbr .gopen '.g config --get remote.origin.url | xargs open'
abbr .gpl '.g pull'
abbr .gplr '.g pull --rebase'
abbr .gps '.g push'
abbr .gps '.g push -f'
abbr .gr '.g remote -v'
abbr .grb '.g rebase'
abbr .grbi '.g rebase -i'
abbr .grs '.g reset --'
abbr .grsh '.g reset --hard'
abbr .grsl '.g reset HEAD~'
abbr .gs '.g status'
abbr .gsh '.g show'
abbr .gt '.g tag'
abbr .gtop '.g reve-parse --show-toplevel'
abbr .gurl '.g config --get remote.origin.url'


#Docker
abbr dk   'docker'
abbr dkc  'docker container'
abbr dkcr 'docker container run'
abbr dkcs 'docker container stop'
abbr dkcet 'docker container exec -it'
abbr dkcls 'docker container ls'

abbr dkv  'docker volume'
abbr dkvc 'docker volume create'
abbr dkvr 'docker volume remove'
abbr dkvls 'docker volume ls'

# Docker Compose
abbr dc 'docker-compose'
abbr dcu 'docker-compose up'
abbr dcd 'docker-compose down'
abbr dcls 'docker-compose ps'
abbr dcex 'docker-compose exec'
