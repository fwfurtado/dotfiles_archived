source $HOME/.config/dotfiles/fish/dotfiles.fish 
source $HOME/.nurc 

function nu-vpn
  command sudo openfortivpn -c "$NU_HOME/.nu-vpn"
end

