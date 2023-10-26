#! /bin/bash


# ------------------ general configs ------------------------------------------------------

# delete recents apps in dock
defaults write com.apple.dock "show-recents" -bool "false" &&
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1 &&
defaults write com.apple.screensaver askForPasswordDelay -int 0 &&
# touch trackpad to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true  &&# enable "Tap To Click" feature
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 &&
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 &&
# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always" &&
# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false &&
# Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true



# ------------------ Install Zsh & Oh My Zsh ------------------------------------------------------
# Do not run zsh after installation
RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# ------------------ Download homebrew and install apps ------------------------------------------------------
which -s brew
if [[ $? != 0 ]] ; then
    # Install homebrew.
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
fi
# Update recipes
brew update &&

#install apps
brew install wget &&
brew install git &&
brew install diff-so-fancy &&
# diff-so-fancy config
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX" &&
git config --global interactive.diffFilter "diff-so-fancy --patch" &&

brew install poetry &&
brew install --cask slack &&
brew install --cask google-chrome &&
brew install --cask postman &&
brew install --cask visual-studio-code &&
brew install --cask spotify &&
brew install --cask docker &&
brew install --cask notion &&
brew install --cask alt-tab &&
brew install --cask spectacle
