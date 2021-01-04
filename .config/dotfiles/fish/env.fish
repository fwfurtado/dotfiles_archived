set -xU DOTFILES_REPO "$HOME/.dotfiles/"
set -xU FISH_DOTFILES "$HOME/.config/dotfiles/fish"

set -xU FZF_DEFAULT_OPTS '--height 40% --layout reverse --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255 --color info:7,prompt:2,spinner:1,pointer:232,marker:1'
set -xU ASDF_HOME '/opt/asdf-vm'
set -x GPG_TTY (tty)
set -xU EDITOR 'emacsclient -t'
set -xU VISUAL 'emacsclient -t'
set -xU ERL_AFLAGS '-kernel shell_history enabled'
set -xU SUDO_EDITOR 'emacsclient'

# tide 
set --global tide_prompt_char_icon 'λ'
set --global tide_left_prompt_frame_enabled true
set --global tide_status_always_display true
