function _edit_file() { file_name=$1

  ${=EDITOR} $file_name
}

alias zshrc='_edit_file ~/.zshrc' # Quick access to the ~/.zshrc file
alias nvimrc='_edit_file $CONFIG_HOME/nvim/init.vim' 
alias aliasrc='_edit_file $CUSTOM_DOTFILES_HOME/alias.zsh'
#alias pluginrc='_edit_file $CUSTOM_DOTFILES_HOME/plugins.zsh'
alias envrc='_edit_file $CUSTOM_DOTFILES_HOME/envs.zsh' 
alias bindkeysrc='_edit_file $CUSTOM_DOTFILES_HOME/bindkeys.zsh'
alias dotfilesrc='_edit_file $CUSTOM_DOTFILES_HOME/dotfiles.zsh'
alias pathrc='_edit_file $CUSTOM_DOTFILES_HOME/paths.zsh'
alias loaderrc='_edit_file $CUSTOM_DOTFILES_HOME/loaders.zsh'
#alias p10krc='_edit_file $CUSTOM_DOTFILES_HOME/p10k.zsh'
alias funrc='_edit_file $CUSTOM_DOTFILES_HOME/functions.zsh'

alias src='source ~/.zshrc'

#Dotfiles VCS 
alias '.g'='git --git-dir=$DOTFILES_REPO --work-tree=$HOME ' 
alias '.gs'='.g status ' 
alias '.ga'='.g add ' 
alias '.gcmsg'='.g commit -m ' 
alias '.gps'='.g push '
alias '.gpl'='.g pull '

#commons
#alias vim=nvim
alias ls='exa  --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles

# Replace some more things with better alternatives
alias cat='bat --style header --style rules --style snip --style changes --style header'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias helpme='cht.sh --shell'
alias please='sudo'

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

