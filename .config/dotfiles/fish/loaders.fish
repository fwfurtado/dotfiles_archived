# Fix flatpak XDG_RUNTIME_DIR
#test -e /etc/profile; and bass source /etc/profile
if test -e $HOME/.env
   for env in (sed 's/#.*//g' $HOME/.env | envsubst | string match -r '.+');
        export $env
   end
end 


# Load asdf 
source $ASDF_HOME/asdf.fish 

# Set JAVA_HOME to current asdf java
test -e $HOME/.asdf/plugins/java/set-java-home.fish; and source $HOME/.asdf/plugins/java/set-java-home.fish

# Set dotnet-core to current asdf java
test -e $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.fish; and source $HOME/.asdf/plugins/dotnet-core/set-dotnet-home.fish

