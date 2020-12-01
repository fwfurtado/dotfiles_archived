#Commons 
alias vim='nvim'
alias lt='ls --tree'
alias grep='grep --color'
alias ll='ls -lh'
alias la='ll -a'
alias pacman='sudo pacman'
alias home='cd $HOME'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias open='xdg-open'
# alias cd='enhancd'

#Dotfiles VCS
alias '.g'='git --git-dir=$DOTFILES_REPO --work-tree=$HOME ' 
alias '.gs'='.g status ' 
alias '.ga'='.g add ' 
alias '.gcmsg'='.g commit -m ' 
alias '.gp'='.g push '
alias '.gpl'='.g pull '

# by default some commands does not expand alias, but on alias with trailing space cause the expand next alias of next word
alias xargs='xargs ' 
alias watch='watch ' 
alias sudo='sudo ' 

function gdt --description "Git diff with icdiff tool"
  if count $argv > /dev/null 
    git difftool -y -x icdiff (git rev-parse --abbrev-ref HEAD) | less 
  else
    git difftool -y -x icdiff $argv | less 
  end 
end 
