
# ideas from: https://gist.github.com/bradp/bea76b16d3325f5c47d4

# softwareupdate --install-rosetta

# Instala brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

# General
brew install vlc brave-browser google-chrome whatsapp homebrew/cask-drivers/logitech-options stats htop transmission avibrazil-rdm lunar obs teamviewer spotify

# Development
brew install visual-studio-code postman awscli coreutils gpg google-chrome-canary firefox docker ngrok/ngrok/ngrok

# database 
brew install mysqlworkbench robo-3t dbeaver-community

# VPN
brew install tunnelblick

# Game 
brew install steam

# Configs
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes
