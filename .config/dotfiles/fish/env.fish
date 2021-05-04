set -xU DOTFILES_REPO "$HOME/.dotfiles/"
set -xU FISH_DOTFILES $HOME/.config/dotfiles/fish""

set -x FZF_DEFAULT_OPTS '--height 40% --no-bold --layout reverse --border'
set -x ASDF_HOME "$HOME/.asdf/"
set -x GPG_TTY (tty)
set -x EDITOR 'emacsclient -cn'
set -x VISUAL 'emacsclient -cn'
set -x ERL_AFLAGS '-kernel shell_history enabled'
set -x SUDO_EDITOR 'emacsclient -cn'
set -x CHROME_EXECUTABLE '/usr/bin/brave'


set -xg PROJECT_DIR '~/projects/:~/dev/nu/'
set -x PATH '/home/fwfurtado/Android/Sdk/platform-tools' $PATH
set -x PATH '/home/fwfurtado/Android/Sdk/tools/bin/' $PATH
set -x PATH '/home/fwfurtado/.rgit' $PATH
set -x PATH '/home/fwfurtado/confluent-hub-client/bin' $PATH
set -x GO_PATH '/home/fwfurtado/go'
set -x PATH '/home/fwfurtado/.pub-cache/bin' $PATH

#Snap
set -x  PATH '/var/lib/snapd/snap/bin'  $PATH

# tide 
set --global tide_prompt_char_icon 'λ'
set --global tide_left_prompt_frame_enabled true
set --global tide_status_always_display true


#set -x XDG_DATA_DIRS '/var/lib/snapd/desktop' 
