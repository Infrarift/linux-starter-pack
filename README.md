# Linux Starter Pack

When I reformat a new Linux machine, these are the tools I want to start with. The installation should take about 2 hours, depending on internet speed. This pack also assumes that you are running Ubuntu 16.04.



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

#### Status Bar: Indicator Multiload

```bash
sudo apt install indicator-multiload
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

```bash
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
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
sudo apt install git-core zsh curl

# Install OhMyZSH from the repo.
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline fonts via CLI.
sudo apt-get install fonts-powerline

# Clone the plugins: auto-comlete and syntax highlights.
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)

# Copy my config files over.
# The config changes theme to Agnoster, and also some colors.
sudo cp configs/.zshrc ~/
sudo cp configs/agnoster.zsh-theme ~/.oh-my-zsh/themes/

# Change the main shell to ZSH
chsh -s $(which zsh)

# Reboot the machine for these changes to take effect.
```



#### Patched Font

```bash
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
(cd fonts && sudo sh install.sh)
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
dconf load /org/gnome/terminal/legacy/profiles:/:fb358fc9-49ea-4252-ad34-1d25c649e633/ < configs/terminal_profile.dconf
bash cmd/add_profile.sh
```



## AI

#### Nvidia Drivers

First, you need to know what GPU device you have. For example, GTX 1060. Then you can use the link below to check for which driver to use.

- [Go here to find a list of all the available drivers.](https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa)
- [Check Nvidia for driver compatibility with your GPU.](http://www.nvidia.com/object/unix.html)

```bash
# Clean out any current Nvidia files.
sudo apt-get purge nvidia*

# Add the PPA repo and update.
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update

# Install the desired driver version. Replace the number here.
sudo apt-get install nvidia-390
```

Once that is done, you should reboot the machine. You can then check if the drivers are installed properly.

```bash
# Both of these commands should show information about the driver.
lsmod | grep nvidia
nvidia-smi
```



#### CUDA 9.0

I will use the 9.0 version because that is currently supported by Tensorflow and PyTorch. 9.1 might still be a bit too new. Follow the instructions from [NVidia's CUDA page](https://developer.nvidia.com/cuda-90-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604).



#### [CUDNN](http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html)

We need CUDNN for convolutions. Follow the instructions [here](http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html).



#### [PyTorch](http://pytorch.org/)

Configure the line according to which Python and CUDA version you want to use. **Also, use the pip installer.** The conda one seems to break TensorFlow in the environments that I have tested.

```bash
pip3 install http://download.pytorch.org/whl/cu91/torch-0.3.1-cp36-cp36m-linux_x86_64.whl 
pip3 install torchvision
```



#### [Docker CE](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository)

Docker will be installed via the repostiroy method. Visit the link above for the official, up to date instructions. I've also pasted them below because I'm lazy and want everything in one place.

Get the dependencies.

```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
```

Add the official GPG key.

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Use this to check if it was added successfully.

```bash
sudo apt-key fingerprint 0EBFCD88
```

Set up the stable repository.

```bash
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

Finally, install Docker CE.

```bash
# Update the cache.
sudo apt-get update

# Install Docker.
sudo apt-get install docker-ce

# Test the installation.
sudo docker run hello-world
```



## Sources

[.tmux: Oh My Tmux!](https://github.com/gpakosz/.tmux) | [Oh My Zsh!](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb) | [Robby Russel OMZ](https://github.com/robbyrussell/oh-my-zsh) | [Install Powerline](https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin) | [Powerline Patched Fonts](https://github.com/powerline/fonts) | [Getting Started with Tmux](https://lukaszwrobel.pl/blog/tmux-tutorial-split-terminal-windows-easily/)