#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type.
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'secret'; FLUSH PRIVILEGES;"

# Install PHP extensions with PECL
pecl install memcached imagick

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create a Code directory
mkdir $HOME/Code

# Create sites subdirectories
mkdir $HOME/Code/app
mkdir $HOME/Code/misc
mkdir $HOME/Code/oss
mkdir $HOME/Code/pkg
mkdir $HOME/Code/web

# Clone Github repositories
# ./clone.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Removes .tmux.conf from $HOME (if it exists) and symlinks the .tmux.conf file from the .dotfiles
rm -rf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

# Removes .vimrc and .vim from $HOME (if they exist) and symlinks these files from the .dotfiles
rm -rf $HOME/.vim
rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vim $HOME/.vim
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
