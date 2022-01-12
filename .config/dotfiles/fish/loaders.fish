# Load asdf 
source $ASDF_HOME/asdf.fish 

# Set JAVA_HOME to current asdf java
test -e $HOME/.asdf/plugins/java/set-java-home.fish; and source $HOME/.asdf/plugins/java/set-java-home.fish

# Set dotnet-core to current asdf java
test -e $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.fish; and source $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.fish

#test -e $HOME/.config/wal/launcher.fish; and source $HOME/.config/wal/launcher.fish
#test -e $HOME/.cache/wal/colors-tty.sh; and sh $HOME/.cache/wal/colors-tty.sh >> /dev/null 
#test -e $HOME/.cache/wal/colors.fish; and source $HOME/.cache/wal/colors.fish 
#test -e $HOME/.cache/wal/colors.Xresources; and ln -sf $HOME/.cache/wal/colors.Xresources $HOME/.Xresources

# bass source $HOME/.nix-profile/etc/profile.d/nix.sh


test -e /etc/profile; and bass source /etc/profile

# for file in /etc/profile.d/*.sh
    # bass source $file
# end

# nohup streamdeck --no-ui &> /dev/null
