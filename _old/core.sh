#!/bin/bash
# 
# Autor        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em    : 2017-08-08 
#
# Versão Atual : v0.1.1
#
#-------------------------------------------------------------------------------
#
# Finalidade:
#    Auxiliar na instalação do Master PDF Editor.
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-08-08, Vitor R. Di Toro:
#       - Versão Inicial.
#
#    v0.1.1 : 2017-09-06, Vitor R. Di Toro:
#       - Atualizado a o cabeçalho deste documento, para conter as sessões 
#         Finalidade e Histórico.
#
#-------------------------------------------------------------------------------




#=============================================================================#
#  Rotinas Básicas                                                            #
#=============================================================================#

# Define o local de onde está sendo rodado o script
#====================================================================
LOCAL=$pwd


# Atualiza o cache dos repositórios
#====================================================================
sudo apt-get update


# Atualiza os programas e pacotes já instalados
#====================================================================
sudo apt-get upgrade



#=============================================================================#
#  Programas de Repositórios Nativos                                          #
#=============================================================================#

# Install "git"
#    git - the stupid content tracker
#====================================================================
sudo apt-get install git


# Install "terminator"                                               
#    Terminator - Multple GNOME terminals in one window              
#====================================================================
sudo apt-get install terminator

# Personalização do Terminator                                       
#====================================================================
cd $LOCAL
./configTerminator.sh


# Intall "vim"
#    vim - Vi IMproved, a programmers text editor
#====================================================================
sudo apt-get install vim


# Criação e configuração do arquivo ~/.vimrc
#====================================================================
cd $LOCAL
./configVim.sh


# Install "tree"
#    tree - list contents of directories in a tree-like format.
#====================================================================
sudo apt-get install tree


# Install "htop"
#    htop - interactive process viewer
#====================================================================
sudo apt-get install htop


# Install "gdebi"
#    gdebi - Simple tool to install deb files
#====================================================================
sudo apt-get install gdebi


# Install "aptitude"
#    aptitude - high-level interface to the package manager
#====================================================================
sudo apt-get install aptitude

