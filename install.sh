installExtensions() {
    while read p; do
        code-insiders --install-extension "$p"
        echo "$p installed."
    done <extensions
}

copySettings() {
    cp "settings.json" /home/onur/.config/Code\ -\ Insiders/User
}

copyKeybindings() {
    cp "keybindings.json" /home/onur/.config/Code\ -\ Insiders/User
}

copySettings
copyKeybindings
installExtensions
