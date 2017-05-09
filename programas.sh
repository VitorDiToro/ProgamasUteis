# !/bin/bash
#
# Autor		: Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em	: 2017-05-08 
#
#-------------------------------------------------------------------------------
#
# Objetivo:
#
#   Este programa tem o objetivo de "facilitar a vida" do autor.
#   Este script automatiza a instalação de diversos programas úteis, na visão do
#   autor, para distribuições GNU/Linux baseadas na distribuição Debian, como o
#   Mint Linux e o Ubuntu (Todos os sabores).
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1 2017-05-08, Vitor R. Di Toro:
#	- Criado a arquivo.
#	- Adicionado os programas:
#	    * terminator
#	    * tree
#	    * vim
#	    * ack-grep
#           * baobab
#	    * meld
#	    * build-essential
#	    * htop
#           * gdebi
#           * qBittorrent
#           * git
#           * shutter
#           * ppa-purge  
#           * gparted
#           * "Master PDF Editor"
#
#-------------------------------------------------------------------------------
#
# License:
#    This is free software, licensed under the GNU General Public License v2.
#
# Licença:
#    Este software é licenciado sobre a licença GNU General Public License V2.
#    GPLv2.
#



#============================#
#   Constantes do Programa   #
#============================#

# Master PDF Editor - MPE
MPE_64="http://get.code-industry.net/public/master-pdf-editor-4.1.30_qt5.amd64.deb" 
MPE_32="http://get.code-industry.net/public/master-pdf-editor-4.1.30_i386.deb"



#============================#
#     Programas Listados     #
#============================#

# Install "terminator"
#    Terminator - Multple GNOME terminals in one window
sudo apt-get install terminator


# Install "tree"
#    tree - list contents of directories in a tree-like format.
sudo apt-get install tree


# Intall "vim"
#    vim - Vi IMproved, a programmers text editor
sudo apt-get install vim


# Install "ack-grep"
#    ack-grep - grep-like text finder
sudo apt-get install ack-grep


# Install "baobab"
#    Baobab - A graphical tool to analyze disk usage
sudo apt-get install baobab


# Install "meld"
#    meld - graphical tool to diff and merge files
sudo apt-get install meld


# Install "build-essential"
#    build-essential - Informational list of build-essential packages
sudo apt-get install build-essential 


# Install "htop"
#    htop - interactive process viewer
sudo apt-get install htop


# Install "gdebi"
#    gdebi - Simple tool to install deb files
sudo apt-get install gdebi


# Install "qBittorrent"
#    qBittorrent - a Bittorrent client written in C++ / Qt
sudo apt-get install qbittorrent


# Install "git"
#    git - the stupid content tracker
sudo apt-get install git


# Install "shutter"
#    Shutter - Feature-rich Screenshot Tool
sudo apt-get install shutter


# Install "ppa-purge"
#    ppa-purge - disables a PPA and reverts to official packages
sudo apt-get install ppa-purge


# Install "gparted"
#    gparted - GNOME partition editor
sudo apt-get install gparted


# Install "Master PDF Editor"
#    Master PDF Editor is complete solution for view, print and edit PDF files.
cd ~/Downloads
arquitetura_sistema=`getconf LONG_BIT`
if test "$arquitetura_sistema" = "64"
then 
	wget $MPE_64
else
    wget $MPE_32 -O master-pdf-editor.deb
fi
sudo gdebi master-pdf-editor.deb 
sudo rm -rf ~/Downloads/master-pdf-editor.deb

