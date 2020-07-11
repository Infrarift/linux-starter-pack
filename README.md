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



## Frameworks and Tools

| Name                                                         | Description |
| ------------------------------------------------------------ | ----------- |
| [NodeJS](https://github.com/nodesource/distributions/blob/master/README.md) |             |
| [Conda (Python)](https://docs.conda.io/en/latest/miniconda.html) |             |
| [React](https://reactjs.org/docs/create-a-new-react-app.html) |             |
| [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) |             |
| [AWS CDK](https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html) |             |



## Notes

How to dump current terminal profiles.

```
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
```

```
VERSION=v12.18.2
DISTRO=linux-x64
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 

# Symlink to default
sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/node /usr/bin/node
sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npm /usr/bin/npm
sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npx /usr/bin/npx
```

```
# Add this to zsh
VERSION=v12.18.2
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
```

## Sources

[.tmux: Oh My Tmux!](https://github.com/gpakosz/.tmux) | [Oh My Zsh!](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb) | [Robby Russel OMZ](https://github.com/robbyrussell/oh-my-zsh) | [Install Powerline](https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin) | [Powerline Patched Fonts](https://github.com/powerline/fonts) | [Getting Started with Tmux](https://lukaszwrobel.pl/blog/tmux-tutorial-split-terminal-windows-easily/)

