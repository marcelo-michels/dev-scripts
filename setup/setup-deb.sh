
# Install chrome 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install brave
sudo snap install brave

# Install general tools
sudo snap install slack
sudo snap install obs-studio
sudo snap install vlc
sudo snap install spotify
sudo snap install discord

# Install developement tools
sudo snap install terraform --classic
sudo snap install aws-cli --classic
sudo snap install code --classic
sudo snap install postman
sudo snap install dbeaver-ce

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
