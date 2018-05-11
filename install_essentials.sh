sudo apt-get update
sudo apt-get upgrade

# Install Git.
sudo apt-get install git

# Install Vim.
sudo apt-get install vim

# Install multi-load indicator.
sudo apt install indicator-multiload

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -f
sudo dpkg -i google-chrome*.deb

# Install Typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get update
sudo apt-get install typora

# Install PyCharm
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get update
sudo apt-get install pycharm-community

# Install Kraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
