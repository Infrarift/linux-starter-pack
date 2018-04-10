# Install Powerline for VIM.
sudo apt-get install python-pip
pip install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc

# Install ZSH
sudo apt install git-core zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install fonts-powerline
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)
sudo cp configs/.zshrc ~/.zshrc
sudo cp configs/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
chsh -s $(which zsh)


# Install Patched Font
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/

# Install Tmux
sudo apt-get install tmux
sudo cp configs/.tmux.conf ~/
sudo cp configs/.tmux.conf.local ~/

# Color Theme
sudo apt-get install dconf-tools
dconf load /org/gnome/terminal/legacy/profiles:/:b7266f75-b49b-4c90-966c-e39c32f37edb/ < configs/ai_profile.dconf
bash cmd/add_profile.sh
