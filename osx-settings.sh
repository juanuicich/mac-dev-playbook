# change host name
sudo scutil --set ComputerName "name"
sudo scutil --set LocalHostName "name"
sudo scutil --set HostName "tres"

# make FirefoxDeveloperEdition the default browser
/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox -setDefaultBrowser

### Finder ###
# show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# default Finder to column layout
defaults write com.apple.Finder FXPreferredViewStyle clmv

# enable Finder status bar
defaults write com.apple.Finder ShowStatusBar 1

# show full path in Finder title

# show folders first
defaults write com.apple.finder _FXSortFoldersFirst 1

# desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 32" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 24" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 10" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:labelOnBottom 0" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo 0" ~/Library/Preferences/com.apple.finder.plist
### /Finder ###

# install zulu
curl -L https://zulu.sh/install | zsh && zsh
# zulu plugins
zulu install autosuggestions color command-not-found fast-syntax-highlighting filthy git history-substring-search revolver solarized-man utility you-should-use

# enable touch to click on trackpad
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1

# auto hide dock
osascript -e "tell application \"System Events\" to set the autohide of the dock preferences to true"

# remove all icons from dock
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# dock icon size
defaults write com.apple.dock tilesize 48

# show hidden files on save dialogs
defaults write -g AppleShowAllFiles -bool true

# default expanded save dialogs
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Mute startup sound
sudo nvram SystemAudioVolume=%00