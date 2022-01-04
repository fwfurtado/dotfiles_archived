bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Alt + LeftArrow and Alt + RightArrow # To check this combination use `cat > /dev/null` and type the combination
bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

# Ctrl + LeftArrow and Ctrl + RightArrow # To check this combination use `cat > /dev/null` and type the combination
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
