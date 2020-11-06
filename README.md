# Dotfiles

## Installation 
```bash
pushd $HOME 
git clone --bare https://github.com/fwfurtado/dotfiles.git $HOME/.dotfiles 
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout 
source .zshrc 
popd 
``` 
