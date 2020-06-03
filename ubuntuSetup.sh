#!/bin/sh
echo "Running ubuntuSetup"

echo -e "Updating... \c"
sudo apt update 1>/dev/null && echo -e "Complete\n" || echo -e "Error\n"

echo -e "Upgrading... \c"
sudo apt upgrade -y 1>/dev/null && echo -e "Complete\n" || echo -e "Error\n"

echo -e "Configuring Aliases... \c"
mv .bash_aliases ~
echo "Complete"

aptinstall(){
  echo -e "Installing $1... \c"
  sudo apt install -y $2 1>/dev/null && echo -e "Complete\n" || echo -e "Error\n"
}

snapinstall(){
  echo -e "Installing $1... \c"
  sudo snap install $2 1>/dev/null && echo -e "Complete\n" || echo -e "Error\n"
}

aptinstall Vim vim
aptinstall 'Java JDK & JRE' openjdk-8-jre-headless
aptinstall 'Gnome Tweaks' gnome-tweak-tool
aptinstall Rhythmbox rhythmbox

snapinstall Atom 'atom --classic'
snapinstall Chromium chromium
snapinstall 'Deja Dup Backup Tool' 'deja-dup --classic'
snapinstall Discord discord
snapinstall 'Draw IO' drawio
snapinstall 'Eclipse' 'eclipse --classic'
snapinstall 'Gnome Tweaks' gnome-tweak-tool
snapinstall 'Libre Office' libreoffice
snapinstall Postman postman
snapinstall Spotify spotify
snapinstall 'VLC Player' vlc

echo "ubuntuSetup complete"