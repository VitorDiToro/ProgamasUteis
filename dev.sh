# !/bin/bash
# 
# Autor        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em    : 2017-08-08 
#
# Versão Atual : v0.1.0
#
#-------------------------------------------------------------------------------
#
# Finalidade:
#
#
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-05-08, Vitor R. Di Toro:
#       - Criada a versão inial deste documento
#
#-------------------------------------------------------------------------------



# Install "build-essential"
#    build-essential - Informational list of build-essential packages
#====================================================================
sudo apt-get install build-essential 



# Install "ack-grep"
#    ack-grep - grep-like text finder
#====================================================================
sudo apt-get install ack-grep



# Install "meld"
#    meld - graphical tool to diff and merge files
#====================================================================
sudo apt-get install meld



# Install "shellcheck"
#    shellcheck - Shell script analysis tool
#====================================================================
sudo apt-get install shellcheck



# Atom
#    A hackable text editor for the 21st Century
#====================================================================
cd ~/Downloads
wget https://atom.io/download/deb -O atom.deb
sudo gdebi atom.deb && \
sudo rm -f atom.deb
