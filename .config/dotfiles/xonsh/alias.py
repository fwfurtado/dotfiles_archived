#Dotfiles VCS 
aliases['.g']='git --git-dir=$DOTFILES_REPO --work-tree=$HOME ' 
aliases['.gs']='.g status ' 
aliases['.ga']='.g add ' 
aliases['.gcmsg']='.g commit -m ' 
aliases['.gp']='.g push '
aliases['.gpl']='.g pull '


# commons
aliases['vim']='nvim' 
aliases['ls']='lsd --group-dirs first'
aliases['lt']='ls --tree'
aliases['grep']='grep --color'
aliases['l']='ls -lh' 
aliases['ll']='l' 
aliases['la']='ls -lah' 
aliases['home']='cd $HOME' 
aliases['pacman']='sudo pacman' 
aliases['etckeeper']='sudo etckeeper'

