set -xU DOTFILES_REPO "$HOME/.dotfiles/"
set -xU FISH_DOTFILES $HOME/.config/dotfiles/fish""

set -x FZF_DEFAULT_OPTS '--height 40% --no-bold --layout reverse --border'
set -xg ASDF_HOME "$HOME/.asdf"
set -x GPG_TTY (tty)
set -xg EDITOR 'micro'
set -xg VISUAL 'micro'
set -xg ERL_AFLAGS '-kernel shell_history enabled'
set -xg SUDO_EDITOR 'emacsclient -cn'
set -xg CHROME_EXECUTABLE /usr/bin/google-chrome-stable
set -xg BROWSER brave

# Go settings
#set -xg GOROOT '/home/fwfurtado/.asdf/installs/golang/1.16.4/go/bin/'
set -xg GOPATH /home/fwfurtado/go

set -xg PROJECT_DIR '~/projects/:~/dev/nu/'
set -x PATH /home/fwfurtado/Android/Sdk/platform-tools $PATH
set -x PATH /home/fwfurtado/Android/Sdk/tools/bin/ $PATH
set -x PATH '/home/fwfurtado/.rgit' $PATH
set -x PATH /home/fwfurtado/confluent-hub-client/bin $PATH
set -x PATH $GOPATH/bin $PATH
#set -x PATH '/home/fwfurtado/.pub-cache/bin' $PATH

#Snap
set -x PATH /var/lib/snapd/snap/bin $PATH

# tide 
#set --global tide_prompt_char_icon 'λ'
#set --global tide_left_prompt_frame_enabled true
#set --global tide_status_always_display true


#set -x XDG_DATA_DIRS '/var/lib/snapd/desktop' 
#set -x XDG_DATA_DIRS '/var/lib/flatpak/exports/share' $XDG_DATA_DIRS
#set -x XDG_DATA_DIRS '~/.local/share/flatpak/exports/share' $XDG_DATA_DIRS
