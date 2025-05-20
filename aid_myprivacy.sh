#!/bin/bash

echo "Welcome to aid-myprivacy!" 
echo "Starting your privacy-focused setup..."

command_exists() {
  command -v "$1" &> /dev/null
}

echo "Disabling Spotlight indexing..."
sudo mdutil -i off / && echo "Spotlight disabled." || echo "Failed to disable Spotlight."

if ! command_exists brew; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed."
fi

echo "Installing essential utilities..."
brew install bash curl wget || { echo "Failed to install utilities via Homebrew."; exit 1; }
echo "Updating and cleaning up Homebrew..."
brew update && brew upgrade && brew cleanup -s && rm -rf "$(brew --cache)" || { echo "Failed to update Homebrew."; exit 1; }
brew missing
brew autoremove
brew doctor || { echo "Homebrew doctor found issues."; exit 1; }
brew analytics off

echo "Installing Rosetta..."
softwareupdate --install-rosetta --agree-to-license || echo "Rosetta installation skipped or failed."

echo "Checking and installing available system updates..."
sudo softwareupdate -l && sudo softwareupdate -i -a || { echo "Failed to install software updates."; exit 1; }

echo "Installing LuLu"
brew install --cask lulu || { echo "Failed to install LuLu firewall."; exit 1; }

if [ -d "Lulu-Configuration" ]; then
  echo "Moving LuLu configuration files..."
  sudo rm /Library/Object-See/LuLu/* 
  sudo mv Lulu-Configuration/* /Library/Object-See/LuLu/ || { echo "Failed to move LuLu configuration."; exit 1; }
else
  echo "LuLu configuration folder not found. Skipping this step."
fi

echo "Your privacy-enhanced macOS system is ready."
