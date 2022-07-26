export DOTFILES_REPO=$HOME/.dotfiles/
export FISH_DOTFILES=$HOME/.config/dotfiles/fish

export FZF_DEFAULT_OPTS='--height 40% --no-bold --layout reverse --border'
export ASDF_HOME=$HOME/.asdf
export GPG_TTY=(tty)
export EDITOR='nvim'
export VISUAL='nvim'
export ERL_AFLAGS='-kernel shell_history enabled'
export SUDO_EDITOR='micro'
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export BROWSER=brave
export ANDROID_SDK=$HOME/Android/Sdk

# Go settings
#export GOROOT=(asdf where golang)/go/bin
export GOPATH=$HOME/go

fish_add_path $HOME/Android/Sdk/platform-tools 
fish_add_path $HOME/Android/Sdk/tools/bin/ 
fish_add_path $GOPATH/bin 

#Snap
fish_add_path /var/lib/snapd/snap/bin

# Fix order of tools and emulator for android
set PATH (string match -v $HOME/Android/Sdk/tools $PATH)
fish_add_path $HOME/Android/Sdk/tools

# Podman compatibility with docker
#set -x DOCKER_HOST unix://$XDG_RUNTIME_DIR/podman/podman.socket

export ZELLIJ_AUTO_EXIT="true"
