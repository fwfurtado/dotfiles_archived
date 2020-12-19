function aliasrc
    command emacsclient -t "$FISH_DOTFILES/alias.fish"
end

function abbrrc
    command emacsclient -t "$FISH_DOTFILES/abbreviations.fish"
end

function funcrc
    command emacsclient -t "$FISH_DOTFILES/functions.fish"
end

function envrc
    command emacsclient -t "$FISH_DOTFILES/env.fish"
end

function emacsrc
    command emacsclient -t $HOME/.config/emacs/emacs.el
end


function src
    source $HOME/.config/fish/config.fish
end
