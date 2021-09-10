function aliasrc
    command micro "$FISH_DOTFILES/alias.fish"
end

function abbrrc
    command micro "$FISH_DOTFILES/abbreviations.fish"
end

function funcrc
    command micro "$FISH_DOTFILES/functions.fish"
end

function envrc
    command micro "$FISH_DOTFILES/env.fish"
end


function loaderrc
    command micro "$FISH_DOTFILES/loader.fish"
end

function emacsrc
    command micro $HOME/.config/emacs/emacs.el
end


function src
    source $HOME/.config/fish/config.fish
end

function start-jupyter
    mkdir -p $HOME/projects/apps/jupyter
     
    pushd $HOME/projects/apps/jupyter

    jupyter lab

    popd 
end


function append_path
   fish_add_path $argv   
end
