function _edit_file() { file_name=$1

  ${=EDITOR} $file_name
}

alias zshrc='_edit_file ~/.zshrc' # Quick access to the ~/.zshrc file
alias nvimrc='_edit_file $CONFIG_HOME/nvim/init.vim' 
alias aliasrc='_edit_file $CUSTOM_DOTFILES_HOME/alias.zsh'
alias pluginrc='_edit_file $CUSTOM_DOTFILES_HOME/plugins.zsh'
alias envrc='_edit_file $CUSTOM_DOTFILES_HOME/envs.zsh' 
alias bindkeysrc='_edit_file $CUSTOM_DOTFILES_HOME/bindkeys.zsh'
alias dotfilesrc='_edit_file $CUSTOM_DOTFILES_HOME/dotfiles.zsh'
alias pathrc='_edit_file $CUSTOM_DOTFILES_HOME/paths.zsh'
alias loaderrc='_edit_file $CUSTOM_DOTFILES_HOME/loaders.zsh'
alias p10krc='_edit_file $CUSTOM_DOTFILES_HOME/p10k.zsh'
alias funrc='_edit_file $CUSTOM_DOTFILES_HOME/functions.zsh'

#Dotfiles VCS 
alias '.g'='git --git-dir=$DOTFILES_REPO --work-tree=$HOME ' 
alias '.gs'='.g status ' 
alias '.ga'='.g add ' 
alias '.gcmsg'='.g commit -m ' 
alias '.gp'='.g push '
alias '.gpl'='.g pull '

#commons
alias vim=nvim
alias ls='lsd --group-dirs first'
alias lt='ls --tree'
alias grep='grep --color'
alias l='ls -lh' 
alias ll='l' 
alias la='ls -lah' 
alias home='cd $HOME' 
alias pacman='sudo pacman' 
alias etckeeper='sudo etckeeper' 
alias docker='podman'

# by default some commands does not expand alias, but on alias with trailing space cause the expand next alias of next word
alias xargs='xargs ' 
alias watch='watch ' 
alias sudo='sudo ' 


alias pbcopy='xsel --clipboard --input'
alias pbpast='xsel --clipboard --output'
alias open='xdg-open'

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'


#my git alias
alias gbc="git rev-parse --abbrev-ref HEAD"
alias gmf='git diff --name-only $(gbc) $(git merge-base $(gbc) master)'

function __gdt() {
  if [ -z "$1" ]; then
    git difftool -y -x icdiff $(gbc) | less
  else
    git difftool -y -x icdiff $@ | less
  fi
}

alias gdt='__gdt'

