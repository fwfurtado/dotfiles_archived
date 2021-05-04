function aliasrc
    command emacsclient -cn "$FISH_DOTFILES/alias.fish"
end

function abbrrc
    command emacsclient -cn "$FISH_DOTFILES/abbreviations.fish"
end

function funcrc
    command emacsclient -cn "$FISH_DOTFILES/functions.fish"
end

function envrc
    command emacsclient -cn "$FISH_DOTFILES/env.fish"
end

function emacsrc
    command emacsclient -cn $HOME/.config/emacs/emacs.el
end


function src
    source $HOME/.config/fish/config.fish
end
