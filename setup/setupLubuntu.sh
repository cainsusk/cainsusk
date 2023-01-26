# Cain Susko -- 2022.11.23
#
# This script is meant to set up Lichen, the computer, if it were ever to be
# bricked and restarted.
#
# Note: one must use "sudo -v" before using this script in order to cache the
# sudo credentials for the script to use

# Get latest packages
sudo apt update

# Install basic tools, falkon for web browsing, nvim for text editing, and
# font-manager (self explanatory)
sudo apt install falkon neovim font-manager curl

# Create folders for downloads
themes="~/Downloads/themes"
fonts="~/Downloads/fonts"
mkdir $themes
mkdir $fonts

# Download icon theme
git clone https://github.com/nestoris/Win98SE.git $themes/Win98SE
# Download cursor theme
git clone https://github.com/mdomlop/retrosmart-x11-cursors.git $themes/RetorsmartCursors
# Download terminal font
wget https://download.damieng.com/fonts/original/EnvyCodeR-PR7.zip -O $fonts/EnvyCodeR.zip
unzip $fonts/EnvyCodeR.zip -d $fonts
rm $fonts/EnvyCodeR.zip
mv $fonts/"Envy Code R PR7" $fonts/EnvyCodeR

# Themes must still be installed by placing the files in "~/.icons".
# The theme directories should both have a README detailing this process.
#
# Additionally, the fonts must be installed manually by opening them with
# font-manager
