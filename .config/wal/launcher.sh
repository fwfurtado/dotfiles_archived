current_desktop=$(echo $XDG_CURRENT_DESKTOP | tr '[:upper:]' '[:lower:]') 

case $current_desktop in 
  deepin)
    current_background=$(grep '=' $HOME/.config/deepinwmrc | sed -n '1 p' | cut -d '=' -f 2 | sed 's/file:\/\///')
    ;;
  gnome)
    current_background=$(gsettings get org.gnome.desktop.background picture-uri | sed 's/file:\/\///')
    ;;
  *)
    echo "Sorry I don't know what is your current desktop"
    ;;
esac 

wal -a 8 -n -e -i "$current_background" > /dev/null
