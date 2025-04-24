
# General
alias ll="ls -lhSa"
alias lssize="du -sh .[^.]* *"
alias llsize="du -sh .[^.]* *"
alias previsaoTempo="curl 'https://wttr.in/?1'"

function openFullScreenUrl {
  open -a "Google Chrome" --args --kiosk "$1"
}