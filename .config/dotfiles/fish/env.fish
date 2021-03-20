set -xU DOTFILES_REPO "$HOME/.dotfiles/"
set -xU FISH_DOTFILES $HOME/.config/dotfiles/fish""

set -xU FZF_DEFAULT_OPTS '--height 40% --no-bold --layout reverse --border'
set -x ASDF_HOME "$HOME/.asdf/"
set -x GPG_TTY (tty)
set -xU EDITOR 'emacsclient -t'
set -xU VISUAL 'emacsclient -t'
set -xU ERL_AFLAGS '-kernel shell_history enabled'
set -xU SUDO_EDITOR 'emacsclient'

set -xg PROJECT_DIR '~/projects/:~/dev/nu/'
set -x  PATH '/home/fwfurtado/Android/Sdk/platform-tools' $PATH
# tide 
set --global tide_prompt_char_icon 'λ'
set --global tide_left_prompt_frame_enabled true
set --global tide_status_always_display true


set -x XDG_DATA_DIRS '/var/lib/flatpak/exports/share' $XDG_DATA_DIRS
set -x XDG_DATA_DIRS $XDG_DATA_DIRS '/home/fwfurtado/.local/share/flatpak/exports/share'
set -x XDG_DATA_DIRS $XDG_DATA_DIRS "$HOME/.nix-profile/share" 