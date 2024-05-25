
# add 
# source ~/dev-scripts/alias/all.sh
# at file 
# ~/.bashrc

source ~/dev-scripts/alias/networking.sh
source ~/dev-scripts/alias/git.sh
source ~/dev-scripts/alias/general.sh
source ~/dev-scripts/alias/docker.sh
source ~/dev-scripts/alias/npm.sh


# Check if .dev-scripts-update file does not exist or if it was not modified today
if ! [[ -f ~/.dev-scripts-update && $(date -r ~/.dev-scripts-update +%Y-%m-%d) == $(date +%Y-%m-%d) ]]; then
  echo "~/dev-scripts -> Pulling updates"
  # Perform git pull
  CURRENT_DIR=$(pwd)
  cd ~/dev-scripts && git pull
  cd $CURRENT_DIR
  # Update the last modified date of .dev-scripts-update file
  touch ~/.dev-scripts-update
fi