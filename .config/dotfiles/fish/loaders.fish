# Load asdf 
source $ASDF_HOME/asdf.fish 

# Set JAVA_HOME to current asdf java
source $HOME/.asdf/plugins/java/set-java-home.fish 

test -e $HOME/.config/wal/launcher.fish; and source $HOME/.config/wal/launcher.fish
test -e $HOME/.cache/wal/colors-tty.sh; and sh $HOME/.cache/wal/colors-tty.sh >> /dev/null 
test -e $HOME/.cache/wal/colors.fish; and source $HOME/.cache/wal/colors.fish 
test -e $HOME/.cache/wal/colors.Xresources; and ln -sf $HOME/.cache/wal/colors.Xresources $HOME/.Xresources

bass source $HOME/.nix-profile/etc/profile.d/nix.sh


