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

function gbrm 
    set -l OLD_NAME (git rev-parse --abbrev-ref HEAD | string trim)
    set -l NEW_NAME $argv
    set -l REMOTE (git remote | string trim)

    # Rename local branch
    git branch -M $OLD_NAME $NEW_NAME
    
    # Delete old branch on remote
    git push $REMOTE :$OLD_NAME

    # Remove upstream of new branch (this avoid that git uses the old name when push)
    git branch --unset-upstream $NEW_NAME

    # Push new branch to remote 
    git push $REMOTE $NEW_NAME 

    # Set upstream to new branch
    git push $REMOTE -u $NEW_NAME
end 