## Development





## Office

### Typora

```bash
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io linux/'
sudo apt-get update

# install typora
sudo apt-get install typora
```



### WPS Office

```Bash
# WPS-Office for 64bit systems
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb -O ~/Downloads/wps-office.deb

# WPS-Office for 32bit systems
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb -O ~/Downloads/wps-office.deb

sudo dpkg -i wps-office.deb


# Multiple languages dictionary
wget https://github.com/VitorDiToro/ProgramasUteis/files/raw/master/wps-office-language-all_0.1_all.deb -O ~/Downloads/wps-dictionary.deb

sudo dpkg -i wps-dictionary.deb


# Instal M$CoreFonts
sudo apt-get install ttf-mscorefonts-installer


# 
git clone https://github.com/iamdh4/ttf-wps-fonts.git
cd ttf-wps-fonts
sudo bash install.sh
```

