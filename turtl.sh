#!/bin/bash
# Autor        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em    : 2017-12-21 
#
# Versão Atual : v0.1.0
#
#-------------------------------------------------------------------------------
#
# Finalidade:
#    Auxiliar na instalação do Turtl <www.turtlapp.com>;
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-12-21, Vitor R. Di Toro:
#       - Versão Inicial
#
#-------------------------------------------------------------------------------



#=======================================#
#  Constantes do Programa               #
#=======================================#

# Verifica a arquitetura do Sistema (32 ou 64 bits)
ARQUITETURA_SISTEMA=`getconf LONG_BIT`

# Turtl - Links
TURTL_32="https://turtlapp.com/releases/desktop/turtl-linux32-0.6.4.tar.bz2"
TURTL_64="https://turtlapp.com/releases/desktop/turtl-linux64-0.6.4.tar.bz2"


#======================================#
#  Instalação do Turtl                 #
#======================================#

cd ~/Dowloads

if test "$ARQUITETURA_SISTEMA" = "64"
then
    wget $TURTL_64 -O turtl.tar.bz2
else
    wget $TURTL_32 -O turtl.tar.bz2
fi

sudo tar xjvf turtl.tar.bz2 -C /opt/

cd turtl-linux*

sudo chmod +x install.sh

mkdir -p ~/.local/share/applications

sudo ./install.sh
