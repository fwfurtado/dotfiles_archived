# Don't close terminal when press CTRL+D
set -o ignoreeof


# Compile completions if .zcompdump not exits
__compile_completions_if_necesary

# Load oh-my-zsh 
#source $ZSH/oh-my-zsh.sh

# Load asdf 
source  $ASDF_HOME/asdf.sh

# Set JAVA_HOME to current asdf java 
source ~/.asdf/plugins/java/set-java-home.zsh

# Load SCM_Breeze 
[ -s "$SCM_BREEZE_HOME/scm_breeze.sh" ] && source "$SCM_BREEZE_HOME/scm_breeze.sh"

# Load Auto suggestion
[ -s "$ZSH_AUTOSUGGESTION_HOME/zsh-autosuggestions.zsh" ] && source "$ZSH_AUTOSUGGESTION_HOME/zsh-autosuggestions.zsh"

# Load Syntax Highligthing
[ -s "$ZSH_SYNTAX_HIGHLIGHT_HOME/zsh-syntax-highlighting.zsh" ] && source "$ZSH_SYNTAX_HIGHLIGHT_HOME/zsh-syntax-highlighting.zsh"

# which poetry && poetry completions zsh > "$ZINIT_HOME/completions/_poetry" && compinit 

#[ -f $HOME/.config/wal/launcher.sh ] && source $HOME/.config/wal/launcher.sh
#[ -f $HOME/.cache/wal/sequences ] && cat $HOME/.cache/wal/sequences
#[ -f $HOME/.cache/wal/colors.Xresources ] && ln -sf $HOME/.cache/wal/colors.Xresources $HOME/.Xresources 
