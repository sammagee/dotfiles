# Shortcuts
alias aliases="vim $DOTFILES/aliases.zsh"
alias back="cd - > /dev/null"
alias c=clear
alias cls="c; ls"
alias functions="vim $DOTFILES/functions.zsh"
alias idea='open -na "IntelliJ IDEA.app" --args "$@"'
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias path="vim $DOTFILES/path.zsh"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias x="exit"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias practice="cd $HOME/Code/practice"
alias services="cd $HOME/workspace/services"
alias sites="cd $HOME/Code"
alias vuepackages="cd $HOME/workspace/vue-packages"
alias workspace="cd $HOME/workspace"

# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias sail="bash vendor/bin/sail"
alias seed="php artisan db:seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# JS
alias nbuild="npm run build"
alias ni="npm install"
alias ndev="npm run dev"
alias ne2e="npm run test:e2e"
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias nhot="npm run hot"
alias nlint="npm run lint"
alias nprod="npm run prod"
alias nserve="npm run serve"
alias ntest="npm run test"
alias nunit="npm run test:unit"
alias nwatch="npm run watch"

alias y="yarn"
alias ybuild="yarn build"
alias ydev="yarn dev"
alias ye2e="yarn test:e2e"
alias ye2eheadless="yarn test:e2e --headless"
alias yfresh="rm -rf node_modules/ yarn.lock && yarn"
alias ylint="yarn lint"
alias yo="yarn outdated"
alias yprod="yarn prod"
alias yserve="yarn serve"
alias ytest="yarn test"
alias yui="yarn upgrade-interactive"
alias yunit="yarn test:unit"
alias ywatch="yarn watch"

alias yi="yarn"
alias ys="yarn run start"
alias ytest="yarn test"

# Docker
alias dc="docker compose"
alias dcexec="docker compose exec -T"
alias dcup="SEED=true docker compose up"
alias dcdwn="dc down"
alias dcs="dc stop"
alias dprune="docker system prune"
alias pyserve="PYTHONUNBUFFERED=1; DJANGO_SETTINGS_MODULE=project.settings.test; pip3 install --index-url https://nexus.imtins.com/repository/imtpypi/simple -r requirements/dev.txt -U; python3 manage.py migrate && python3 manage.py runserver"

alias cmspredefined="docker compose run cms python manage.py seed_predefined"
alias formspredefined="docker compose run forms python manage.py seed_predefined"

# alias dstop="docker stop $(docker ps -a -q)"
# alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
# alias dpurgeimages="docker rmi $(docker images -q)"
# dbuild() { docker build -t=$1 .; }
# dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias amend="git add . && git commit --amend --no-edit"
alias clone="git clone"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias gfetch="git fetch"
alias force="git push --force"
alias gco="git checkout"
alias gf="git fetch"
alias gl="git log --oneline --decorate --color"
alias gs="git status"
alias nah="git reset --hard && git clean -df"
alias nuke="nah"
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
