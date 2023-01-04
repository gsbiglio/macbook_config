#! /bin/bash


# ----------- general configs -----------

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
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false


# ----------- download homebrew -----------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
brew install wget &&
brew install git &&
brew install --cask slack &&
brew install --cask google-chrome &&
brew install --cask postman &&
brew install --cask visual-studio-code &&
brew install --cask spotify &&
brew install --cask docker &&
brew install --cask notion &&
brew install --cask alt-tab &&
brew install --cask spectacle
