# !/bin/bash
#
# Autor:       Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em:   2017-05-08 
#
# Versão Atual: v0.5.1
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
#    v0.1.0 : 2017-05-08, Vitor R. Di Toro:
#       - Criado a arquivo.
#       - Adicionado os programas:
#	        * terminator
#           * tree
#           * vim
#           * ack-grep
#           * baobab
#           * meld
#           * build-essential
#           * htop
#           * gdebi
#           * qBittorrent
#           * git
#           * shutter
#           * ppa-purge  
#           * gparted
#           * "Master PDF Editor"
#
#    v0.2.0 : 2017-05-09, Vitor R. Di Toro:
#       - Corrigido a instalação do Master PDF Editor, versão x64.
#
#    v0.3.0 : 2017-05-10, Vitor R. Di Toro:
#       - Adicionário "update" e "upgrade"
#       - Alterado o nome da variável "arquitetura_sistema" para \
#         "ARQUITETURA_SISTEMA" e alterado o seu local. Agora ela \
#         é declarada em "Constantes do Sistema".
#       - Instalações:
#           * WPS-Office
#           * Pacotes de fontes para o WPS-Office
#           * Pacote de tradução da interface do WPS-Office
#
#    v0.4.0 : 2017-05-12, Vitor R. Di Toro:
#       - Adicionado nova tarefa de adicionar um programa de BKP incremental \
#         no TODO.
#       - Adicionado o programa:
#           * shellcheck
#       - Redividido os programas instaláveis em duas catgorias: 
#	      <Programas do Repositório> e <Programas Externos>
#    
#    v0.5.0 : 2017-05-30, Vitor R. Di Toro:
#       - Corrigida a tabulação deste arquivo.
#       - Adicionado a criação de ~/.vimrc, para a configuração da tabulação \
#         do vim.
#       - Atualização do TODO.
#
#    v0.5.1 : 2017-05-30, Vitor R. Di Toro:
#       - Corrigido o TODO.
#       - Corridigo o versionamento de forma retroativa.
#       - Alterado o padrão para as "caixas de título".
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



#=======================================#
#   Constantes do Programa              #
#=======================================#

# Verifica a arquitetura do Sistema (32 ou 64 bits)
ARQUITETURA_SISTEMA=`getconf LONG_BIT`

# Master PDF Editor - MPE
MPE_64="http://get.code-industry.net/public/master-pdf-editor-4.1.30_qt5.amd64.deb" 
MPE_32="http://get.code-industry.net/public/master-pdf-editor-4.1.30_i386.deb"

# WPS Office - WPS
WPS_32="http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_i386.deb"
WPS_64="http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb"
WPS_FONTES="http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb"
WPS_PTBR="http://repo.uniaolivre.com/packages/trusty/main/wps-office-mui-pt-br_1.1.0-0kaiana1_all.deb"
WPS_DICIONARIO=""



#======================================#
#  Rotinas Básicas                     #
#======================================#

# Atualiza o cache dos repositórios
sudo apt-get update

# Atualiza os programas e pacotes já instalados
sudo apt-get upgrade



#======================================#
#  Programas de Repositórios Nativos   #
#======================================#

# Install "terminator"
#    Terminator - Multple GNOME terminals in one window
sudo apt-get install terminator


# Install "tree"
#    tree - list contents of directories in a tree-like format.
sudo apt-get install tree


# Intall "vim"
#    vim - Vi IMproved, a programmers text editor
sudo apt-get install vim


# Criação e configuração do arquivo ~/.vimrc
touch ~/.vimrc
echo "
set tabstop=4       \" The width of a TAB is set to 4.
                    \" Still it is a \t. It is just that
                    \" Vim will interpret it to be having
                    \" a width of 4.

set shiftwidth=4    \" Indents will have a width of 4

set softtabstop=4   \" Sets the number of columns for a TAB

set expandtab       \" Expand TABs to spaces
" >> ~/.vimrc


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


# Install "shellcheck"
#    shellcheck - Shell script analysis tool
sudo apt-get install shellcheck



#======================================#
#  Programas Externos                  #
#======================================#

# Install "Master PDF Editor"
#    Master PDF Editor is complete solution for view, print and edit PDF files.
cd ~/Downloads
if test "$ARQUITETURA_SISTEMA" = "64"
then 
    wget $MPE_64 -O master-pdf-editor.deb
else
    wget $MPE_32 -O master-pdf-editor.deb
fi

sudo gdebi master-pdf-editor.deb && \
sudo rm -f master-pdf-editor.deb


# Install WPS Office
#    The Most Compatible Free Office Suite
cd ~/Downloads
if test "$ARQUITETURA_SISTEMA" = "64"
then
    wget $WPS_64 -O wps-office.deb
else
    wget $WPS_32 -O wps-office.deb
fi

sudo gdebi wps-office.deb && \
sudo rm -f wps-office.deb

# Instalação das Fontes para o WPS-Office 
cd /tmp
git clone https://github.com/iamdh4/ttf-wps-fonts.git
cd ttf-wps-fonts
sudo bash install.sh
rm -rf /tmp/ttf-wps-fonts

cd ~/Downloads
wget $WPS_FONTES -O wps-fontes.deb
sudo gdebi wps-fontes.deb &&
sudo rm -f wps-fontes.deb

# Instalação do pacote de tradução da interface do WPS-Office para PT-BR
cd ~/Downloads
wget $WPS_PTBR -O wps-traducao.deb
sudo gdebi wps-traducao.deb && \
sudo rm -f wps-traducao.deb


# == TODO ==
#   - Ainda falta instalar o dicionário de PT-BR para o WPS-Office, no entanto,
#     ainda tenho que descobrir qual fonte utilizar. 
#     Candidatos:
#       * https://github.com/wps-community/wps_i18n/tree/master/pt_BR
#       * https://drive.google.com/file/d/0B7HGeEB4kyvMaU5SbkdRRjBYWHc
#
#   - Adicionar algum programa p/ BKP incremental.
#     Existem 2 candidados:
#       * Duplicity <https://goo.gl/uuiXQz>
#       * RSync  <https://goo.gl/R21PTL> (Mais Popular)
#
#
#   - Realizar testes e adequações do Script em VMs com:
#       * Debian - 8.8 Jessie
#       * Mint Cinnamon Edition - 18.1 Serena
#       * Ubuntu - 16.04 LST
