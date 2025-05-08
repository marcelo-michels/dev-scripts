
# GIT
alias gits="git status"
alias gita="git add --all"
alias gitc="git commit -m"
alias gitac="gita && gitc"
alias gitamend="git commit --amend --allow-empty && git push -f"
alias gitamendall="gita && gitamend"
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

# gitclone – clona (ou abre) repositório GitHub e abre o Cursor
function gitclone () {
  # === 1. Validação ========================================================
  if [[ $# -ne 1 ]]; then
    echo "Uso: gitclone <url-github>"
    return 1
  fi
  local url="${1%/}"     # remove / final, se houver
  local owner repo dest

  # === 2. Regex para extrair owner/repo ===================================
  if [[ $url =~ '^git@github\.com:([^/]+)/([^/.]+)(\.git)?$' ]]; then
    owner=${match[1]}
    repo=${match[2]}
  elif [[ $url =~ '^https?://github\.com/([^/]+)/([^/.]+)(\.git)?$' ]]; then
    owner=${match[1]}
    repo=${match[2]}
  else
    echo "URL não reconhecida: $url"
    return 2
  fi

  # === 3. Caminho de destino ==============================================
  dest="$HOME/git/$owner/$repo"
  mkdir -p "$HOME/git/$owner"

  # === 4. Clona (se necessário) ============================================
  if [[ -d "$dest/.git" ]]; then
    echo "Repositório já existe: $dest"
  else
    echo "Clonando com: git clone git@github.com:$owner/$repo.git $dest"
    git clone "git@github.com:$owner/$repo.git" "$dest" || return $?
  fi

  # === 5. Abre no Cursor ===================================================
  if command -v cursor >/dev/null; then
    cursor "$dest" &
  else
    echo "Editor Cursor não encontrado; abra manualmente em $dest"
  fi
}