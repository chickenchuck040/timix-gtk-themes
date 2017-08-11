#! /bin/bash

show_question() {
  echo -e "\033[1;34m$@\033[0m"
}

show_dir() {
  echo -e "\033[1;32m$@\033[0m"
}

show_error() {
  echo -e "\033[1;31m$@\033[0m"
}

end() {
  echo -e "\nExiting...\n"
  exit 0
}

continue() {
  show_question "\nDo you want to continue? (y)es, (n)o : \n"
  read INPUT
  case $INPUT in
    [Yy]* ) ;;
    [Nn]* ) end;;
    * ) show_error "\nSorry, try again."; continue;;
  esac
}

replace() {
  show_question "\nFound an existing installation. Replace it? (y)es, (n)o :\n" 
  read INPUT
  case $INPUT in
    [Yy]* ) rm -rf $DEST_DIR/Timix*;;
    [Nn]* ) ;;
    * ) show_error "\nSorry, try again."; replace $@;;
  esac
}

setup() {
  show_question "\nDo you want to set the theme now? (y)es, (n)o : \n"
  read INPUT
  case $INPUT in
    [Yy]* ) themes;;
    [Nn]* ) end;;
    * ) show_error "\nSorry, try again."; setup;;
  esac
}

themes() {
  show_question "\n+------------------------------------------------------------------+

      Select a number to set the theme you want:

              (a)  TimixDark
              (b)  TimixDark-Doder
              (c)  TimixDark-Beryl
              (d)  TimixDark-Ruby
              (e)  TimixDark-Laptop
              (f)  TimixDark-Laptop-Doder
              (g)  TimixDark-Laptop-Beryl
              (h)  TimixDark-Laptop-Ruby
              (i)  TimixLight
              (j)  TimixLight-Doder
              (k)  TimixLight-Beryl
              (l)  TimixLight-Ruby
              (m)  TimixLight-Laptop
              (n)  TimixLight-Laptop-Doder
              (o)  TimixLight-Laptop-Beryl
              (p)  TimixLight-Laptop-Ruby

+------------------------------------------------------------------+\n"
  read INPUT
  case $INPUT in
    [Aa]* )  TimixDark;;
    [Bb]* )  TimixDark-Doder;;
    [Cc]* )  TimixDark-Beryl;;
    [Dd]* )  TimixDark-Ruby;;
    [Ee]* )  TimixDark-Laptop;;
    [Ff]* )  TimixDark-Laptop-Doder;;
    [Gg]* )  TimixDark-Laptop-Beryl;;
    [Hh]* )  TimixDark-Laptop-Ruby;;
    [Ii]* )  TimixLight;;
    [Jj]* )  TimixLight-Doder;;
    [Kk]* )  TimixLight-Beryl;;
    [Ll]* )  TimixLight-Ruby;;
    [Mm]* )  TimixLight-Laptop;;
    [Nn]* )  TimixLight-Laptop-Doder;;
    [Oo]* )  TimixLight-Laptop-Beryl;;
    [Pp]* )  TimixLight-Laptop-Ruby;;
    * ) show_error "\nSorry, try again."; themes;;
  esac
}

TimixDark() {

# Set TimixDark Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark
  echo "Done!"

}

TimixDark-Doder() {

# Set TimixDark-Doder Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Doder
  echo "Done!"

}

TimixDark-Beryl() {

# Set TimixDark-Beryl Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Beryl
  echo "Done!"

}

TimixDark-Ruby() {

# Set TimixDark-Ruby Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Ruby
  echo "Done!"

}

TimixDark-Laptop() {

# Set TimixDark-Laptop Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop
  echo "Done!"

}

TimixDark-Laptop-Doder() {

# Set TimixDark-Laptop-Doder Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Doder
  echo "Done!"

}

TimixDark-Laptop-Beryl() {

# Set TimixDark-Laptop-Beryl Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Beryl
  echo "Done!"

}

TimixDark-Laptop-Ruby() {

# Set TimixDark-Laptop-Ruby Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Ruby
  echo "Done!"

}

TimixLight() {

# Set TimixLight Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight
  echo "Done!"

}

TimixLight-Doder() {

# Set TimixLight-Doder Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Doder
  echo "Done!"

}

TimixLight-Beryl() {

# Set TimixLight-Beryl Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Beryl
  echo "Done!"

}

TimixLight-Ruby() {

# Set TimixLight-Ruby Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Ruby
  echo "Done!"

}

TimixLight-Laptop() {

# Set TimixLight-Laptop Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop
  echo "Done!"

}

TimixLight-Laptop-Doder() {

# Set TimixLight-Laptop-Doder Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Doder
  echo "Done!"

}

TimixLight-Laptop-Beryl() {

# Set TimixLight-Laptop-Beryl Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Beryl
  echo "Done!"

}


TimixLight-Laptop-Ruby() {

# Set TimixLight-Laptop-Ruby Gtk Themes
  echo "Setting the theme..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Ruby
  echo "Done!"

}

install() {

  # PREVIEW

  # Show destination directory
  echo -e "\nTimix Gtk Theme will be installed in:\n"
  show_dir "\t$DEST_DIR"
  if [ "$UID" -eq "$ROOT_UID" ]; then
    echo -e "\nIt will be available to all users."
  else
    echo -e "\nIf you want to make them available to all users, run this script as root."
  fi

  continue

  # INSTALL

  # Check destination directory
  if [ ! -d $DEST_DIR ]; then
    mkdir -p $DEST_DIR
  elif [[ -d $DEST_DIR/TimixDark && -d $DEST_DIR/TimixDark-Doder && -d $DEST_DIR/TimixDark-Beryl && -d $DEST_DIR/TimixDark-Ruby && -d $DEST_DIR/TimixDark-Laptop && -d $DEST_DIR/TimixDark-Laptop-Doder && -d $DEST_DIR/TimixDark-Laptop-Beryl && -d $DEST_DIR/TimixDark-Laptop-Ruby && -d $DEST_DIR/TimixLight && -d $DEST_DIR/TimixLight-Doder && -d $DEST_DIR/TimixLight-Beryl && -d $DEST_DIR/TimixLight-Ruby && -d $DEST_DIR/TimixLight-Laptop && -d $DEST_DIR/TimixLight-Laptop-Doder && -d $DEST_DIR/TimixLight-Laptop-Beryl && -d $DEST_DIR/TimixLight-Laptop-Ruby ]]; then
    replace $DEST_DIR
  fi

  echo -e "\nInstalling Timix..."
  
  # Copying files

  ./Install

  echo -e "\nInstallation complete!"

  setup

}

remove() {

  # PREVIEW

  # Show installation directory
  if [[ -d $DEST_DIR/TimixDark && -d $DEST_DIR/TimixDark-Doder && -d $DEST_DIR/TimixDark-Beryl && -d $DEST_DIR/TimixDark-Ruby && -d $DEST_DIR/TimixDark-Laptop && -d $DEST_DIR/TimixDark-Laptop-Doder && -d $DEST_DIR/TimixDark-Laptop-Beryl && -d $DEST_DIR/TimixDark-Laptop-Ruby && -d $DEST_DIR/TimixLight && -d $DEST_DIR/TimixLight-Doder && -d $DEST_DIR/TimixLight-Beryl && -d $DEST_DIR/TimixLight-Ruby && -d $DEST_DIR/TimixLight-Laptop && -d $DEST_DIR/TimixLight-Laptop-Doder && -d $DEST_DIR/TimixLight-Laptop-Beryl && -d $DEST_DIR/TimixLight-Laptop-Ruby ]]; then
    echo -e "\nTimix Gtk Themes installed in:\n"
    show_dir "\t$DEST_DIR"
    if [ "$UID" -eq "$ROOT_UID" ]; then
      echo -e "\nIt will remove for all users."
    else
      echo -e "\nIt will remove only for current user."
    fi

    continue
  
  else
    show_error "\nTimix Gtk Themes is not installed in:\n"
    show_dir "\t$DEST_DIR\n"
    end
  fi

  # REMOVE

  echo -e "\nRemoving Timix ..."

  # Removing files

  rm -rf $DEST_DIR/Timix*

  echo "Removing complete!"
  echo "I hope to see you soon."
}

main() {
  show_question "What you want to do: (i)nstall, (r)emove : \n"
  read INPUT
  case $INPUT in
    [Ii]* ) install;;
    [Rr]* ) remove;;
    * ) show_error "\nSorry, try again."; main;;
  esac
}

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/themes"
else
  DEST_DIR="$HOME/.themes"
fi

echo -e "\e[1m\n+----------------------------------------------+"
echo -e "|      Timix Gtk Themes Installer Script       |"
echo -e "+----------------------------------------------+\n\e[0m"

main
