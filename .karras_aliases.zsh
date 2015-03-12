alias flykite=~/Projects/scripts/fly.sh
alias tribe="cd ~/Projects/TribeHR/"
alias ios="cd ~/Projects/TribeHR-iOS/TribeHR\ iOS/"
alias droid="cd ~/Projects/TribeHR-Android/"
alias gizmo="cd ~/Projects/gizmo/"
alias tribeadmin="cd ~/Projects/TribeHRAdmin/"
alias downloads="cd ~/Downloads/"
alias gch="git checkout $1"
alias gstat="git status"
alias srczsh="source ~/.zshrc"
alias hch="hub checkout $1"
alias gemfix="CONFIGURE_ARGS=\"–with-ldflags='-Wno-error=unused-command-line-argument-hard-error-in-future'\" sudo -E gem"
alias da="cd /Users/Admin/.wine/drive_c/Program\ Files/EA\ Games/Ultima\ Online\ Mondain\'s\ Legacy"
alias cpmacros="cp ~/Google\ Drive/Finn\ Windows\ macros2d.txt /Users/Admin/.wine/drive_c/Program\ Files/EA\ Games/Ultima\ Online\ Mondain\'s\ Legacy/Silver/Dark\ Age\ Repris/Finn\ Hawthorne/macros2d.txt"
alias cpmacrossilver="cp ~/Google\ Drive/Finn\ Windows\ macros2d.txt /Users/Admin/.wine/drive_c/Program\ Files/EA\ Games/Ultima\ Online\ Mondain\'s\ Legacy/Silver2/Dark\ Age\ Repris/Silver/macros2d.txt"
alias cpmacrosbutcher="cp ~/Google\ Drive/Finn\ Windows\ macros2d.txt /Users/Admin/.wine/drive_c/Program\ Files/EA\ Games/Ultima\ Online\ Mondain\'s\ Legacy/Silver2/Dark\ Age\ Repris/The\ Bloody\ Butcher/macros2d.txt"
alias runda="cpmacros;cpmacrossilver;cpmacrosbutcher; wine client.exe"
alias simctl="/Applications/Xcode.app/Contents/Developer/usr/bin/simctl"
alias adb="/usr/local/lib/android/platform-tools/adb"
alias screencast="javaws ~/Downloads/androidscreencast.jnlp"



#Deployment aliases
alias deploy_notifications="cap -sbranch=notifications labs deploy web:enable"
alias deploy_notifications_migrate="cap -sbranch=notifications labs deploy deploy:migrate"
