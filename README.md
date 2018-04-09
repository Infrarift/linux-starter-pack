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

#### ZSH

#### Tmux

#### Color Theme



## AI

#### Nvidia Drivers

#### CUDA

#### CUDNN

#### PyTorch