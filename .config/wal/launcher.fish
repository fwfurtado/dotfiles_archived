function run_pywal_for_desktop


    set -l current_desktop (echo $XDG_CURRENT_DESKTOP | string lower) 

    switch $current_desktop
      case deepin
        set current_background (grep '=' $HOME/.config/deepinwmrc | sed -n '1 p' | cut -d '=' -f 2 | sed 's/file:\/\///')
      case gnome
        set current_background (gsettings get org.gnome.desktop.background picture-uri | string replace "file://" "" | string unescape)
      case kde
        set current_background (qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.dumpCurrentLayoutJS | grep -m 1 "Image" | cut -d '"' -f 4 | sed 's/file:\/\///' )
      case '*'
        echo "Sorry I don't know what is your current desktop enviroment is"
        return 0

    end
     
    wal -a 8 -n -e -i "$current_background" > /dev/null
end 

if status is-interactive

    run_pywal_for_desktop

end
