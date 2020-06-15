# Shortcuts
alias c=clear
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias x="exit"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Code"

# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias seed="php artisan db:seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# JS
alias ndev="npm run dev"
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias nprod="npm run prod"
alias nserve="npm run serve"
alias nwatch="npm run watch"

# Docker
alias dc="docker-compose"
alias dcup="docker-compose up"
# alias dstop="docker stop $(docker ps -a -q)"
# alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
# alias dpurgeimages="docker rmi $(docker images -q)"
# dbuild() { docker build -t=$1 .; }
# dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias gs="git status"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# Misc.
alias emulator="cd $HOME/Library/Android/sdk/tools && emulator" # Open Android Emulator
alias rni="kill \$(lsof -t -i:8081); rm -rf ios/build/; react-native run-ios" # Refresh React Native for iOS
alias weather="curl wttr.in" # Get current weather
