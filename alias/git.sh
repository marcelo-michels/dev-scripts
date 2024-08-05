
# GIT
alias gits="git status"
alias gita="git add --all"
alias gitc="git commit -m"
alias gitac="gita && gitc"
alias gitamend="git commit --amend && git push -f"
alias gitamendall="gita && git commit --amend && git push -f"
alias gitf="git fetch --all && git fetch -p"
alias gitfp="gitf && git pull"
alias gitl="git log --pretty=format:'%C(yellow)%cr %C(cyan)%H %C(green)%an %C(blue)%d %C(white)%s'"
alias gitcheckout="git checkout"
alias gitcheckoutmain="git checkout main"
alias gitcheckoutdevelop="git checkout develop"
alias gitcheckoutnew="git checkout -b"
alias gitm="git merge"
alias gitdeletebranchlocal="git branch -d"
alias gitdeletebranchremote="git push origin --delete"
alias gitb="git branch -a"
alias gittags="git tag -l | xargs git tag -d && git fetch -t && git tag -l"
alias gitresetmaster="git reset --hard origin/master"
alias gitresetdevelop="git reset --hard origin/develop"
alias gitclean="gitfp && npx git-removed-branches --prune --force"
alias gitConfigList="git config --list"

function gitp {
  BRANCH_NAME=$(git symbolic-ref --short HEAD)
  git push --set-upstream origin $BRANCH_NAME
}
function gitacp {
  COMMIT_MESSAGE=$1
  DEFAULT_MESSAGE=$(git log -1 --pretty=%B)
  gitac "${COMMIT_MESSAGE:-$DEFAULT_MESSAGE}" && gitp && gitfp
}
function gittag {
  git tag $1
  git push origin --tags
}
function gitdeletetag {
  git tag -d $1
  git push --delete origin $1
}
function gitopenweb {
  url=$(git remote -v | awk 'NR==1{print $2}' | sed 's/\.git$//' | sed 's/:/\//' | sed 's/git@/https:\/\//')
  if command -v xdg-open &> /dev/null; then
    xdg-open $url &> /dev/null;
  elif command -v open &> /dev/null; then
    open $url &> /dev/null;
  elif command -v start &> /dev/null; then
    start $url &> /dev/null;
  else
    echo "Não foi possível abrir a URL."
  fi
}