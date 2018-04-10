# Linux Starter Pack
When I reformat a new Linux machine, these are the tools I want to start with.



## Essentials

```bash
sudo apt-get update
sudo apt-get upgrade
```

#### [Git](https://git-scm.com/)

```bash
sudo apt-get install git
```

#### [Vim](https://www.vim.org/)

```bash
sudo apt-get install vim
```

#### [Chrome](https://www.google.com/chrome/)

```bash
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -f
sudo dpkg -i google-chrome*.deb
```

#### [Typora](https://typora.io/)

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get update
sudo apt-get install typora
```



## Development Tools

#### [PyCharm](https://www.jetbrains.com/)

Normally I want to install other JetBrains IDE as well, so for me it's best to just download the [ToolBox App](https://www.jetbrains.com/toolbox/app/).

However, if you want to do it via the shell, you can use an unofficial PPA.

```bash
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get update
sudo apt-get install pycharm-community
```



#### [GitKraken](https://www.gitkraken.com/)

GitKraken is my preferred GUI for Git.

```
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb
```



#### [Conda](https://conda.io/miniconda.html)

Download and install MiniConda from the official page [here](https://conda.io/miniconda.html). I use Python 3 as the default version of conda.



## Terminal

#### Powerline

```bash
# Make sure you have Python PIP installed.
sudo apt-get install python-pip

# Install Powerline.
pip install --user powerline-status

# Copy the config file so that Powerline is active in VIM.
sudo cp configs/.vimrc ~/.vimrc
```



#### ZSH

```bash
# Install pre-requisites.
sudo apt install git-core zsh

# Install OhMyZSH from the repo.
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline fonts via CLI.
sudo apt-get install fonts-powerline

# Clone the plugins: auto-comlete and syntax highlights.
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)

# Copy my config files over.
# The config changes theme to Agnoster, and also some colors.
sudo cp configs/.zshrc ~/.zshrc
sudo cp configs/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Change the main shell to ZSH
chsh -s $(which zsh)

# Reboot the machine for these changes to take effect.
```



#### Patched Font

```bash
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/
```



#### Tmux

```bash
sudo apt-get install tmux

# Copy the config files.
sudo cp configs/.tmux.conf ~/
sudo cp configs/.tmux.conf.local ~/
```



#### Color Theme

```bash
# Get the dconf tool.
sudo apt-get install dconf-tools

# Install the color theme.
dconf load /org/gnome/terminal/legacy/profiles:/:b7266f75-b49b-4c90-966c-e39c32f37edb/ < configs/ai_profile.dconf
bash cmd/add_profile.sh

# Now you need to set the terminal to use this default theme.
```



## AI

#### Nvidia Drivers

#### CUDA

#### CUDNN

#### PyTorch



## Sources

##### [.tmux: Oh My Tmux!](https://github.com/gpakosz/.tmux)

##### [Oh My Zsh!](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb)