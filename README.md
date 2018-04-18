[TOC]



## Development

### Git -- fast, scalable, distributed revision control system

```bash
sudo apt-get install git
```



### Build Essential -- Informational list of build-essential packages

```bash
sudo apt-get install build-essential 
```



### ACK-Grep -- grep-like text finder

```bash
sudo apt-get install ack-grep
```



### Meld -- graphical tool to diff and merge files

```bash
sudo apt-get install meld
```



### Shellcheck -- Shell script analysis tool

```bash
sudo apt-get install shellcheck
```



<br>

## Internet

### qBittorrent -- a Bittorrent client written in C++/Qt

```bash
sudo apt-get install qbittorrent
```



### Dropbox





<br>

## Office

### Typora -- minimalist markdown editor

```bash
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io linux/'
sudo apt-get update

# install typora
sudo apt-get install typora
```



### WPS Office -- Office suite with perfect compatible with M$ Office

```Bash
# WPS-Office for 64bit systems
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb -O ~/Downloads/wps-office.deb

# WPS-Office for 32bit systems
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb -O ~/Downloads/wps-office.deb
sudo dpkg -i wps-office.deb

# Multiple languages dictionary
wget https://github.com/VitorDiToro/ProgramasUteis/files/raw/master/wps-office-language-all_0.1_all.deb -O ~/Downloads/wps-dictionary.deb
sudo dpkg -i wps-dictionary.deb

# Install translate for interface for PT-BR
wget https://github.com/VitorDiToro/ProgramasUteis/blob/master/files/wps-office-mui-pt-br_1.1.0-0kaiana1_all.deb -O ~/Downloads/wps-mui-ptbr.deb
sudo dpkg -i wps-mui-ptbr.deb

# Install M$CoreFonts
sudo apt-get install ttf-mscorefonts-installer

# Install symbol fonts
git clone https://github.com/iamdh4/ttf-wps-fonts.git
cd ttf-wps-fonts
sudo bash install.sh
```



<br>

## System

### Gparted -- GNOME partition editor

```bash
sudo apt-get install gparted
```



<br>

## Util

### Shutter -- Feature-rich Screenshot Tool

```bash
sudo apt-get install shutter
sudo apt-get install libgoo-canvas-perl
sudo apt-get install gnome-web-photo
```



### Baobab -- A graphical tool to analyze disk usage

```bash
sudo apt-get install baobab
```



### 