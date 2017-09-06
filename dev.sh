#!/bin/bash
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
#       - Criada a versão iniciali.
#
#    v0.2.0 : 2017-09-06, Vitor R. Di Toro:
#       - Adicionado a ultima versao do Python.
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
cd /tmp
wget https://atom.io/download/deb -O atom.deb
sudo dpkg -i atom.deb && \
sudo rm -f atom.deb



# Python 3 - Lasted  Version
#    Python is a .... PYTHON!!!!! \,,/
#====================================================================
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install python3.6


