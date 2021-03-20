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
alias emc='emacsclient -cn'
alias semc='sudoedit'
alias md='mkdir -p'

#Dotfiles VCS
alias '.g'='git --git-dir=$DOTFILES_REPO --work-tree=$HOME ' 

function gdt --description "Git diff with icdiff tool"
  if count $argv > /dev/null 
    git difftool -y -x icdiff (git rev-parse --abbrev-ref HEAD) | less 
  else
    git difftool -y -x icdiff $argv | less 
  end 
end 
