# Update Agnoster Theme
sudo cp configs/.zshrc ~/.zshrc
sudo cp configs/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Color Theme
dconf load /org/gnome/terminal/legacy/profiles:/:fb358fc9-49ea-4252-ad34-1d25c649e633/ < configs/terminal_profile.dconf
bash cmd/add_profile.sh

dconf load /org/gnome/terminal/legacy/profiles:/:fb358fc9-49ea-4252-ad34-1d25c649e633/ > configs/new_terminal_profile.dconf