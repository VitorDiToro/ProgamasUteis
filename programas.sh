# !/bin/bash
# 
# Autor        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em    : 2017-05-08 
#
# Versão Atual : v0.6.2
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
#           * terminator
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
#       - Alterado o nome da variável "arquitetura_sistema" para
#         "ARQUITETURA_SISTEMA" e alterado o seu local. Agora ela
#         é declarada em "Constantes do Sistema".
#       - Instalações:
#           * WPS-Office
#           * Pacotes de fontes para o WPS-Office
#           * Pacote de tradução da interface do WPS-Office
#
#    v0.4.0 : 2017-05-12, Vitor R. Di Toro:
#       - Adicionado nova tarefa de adicionar um programa de BKP incremental
#         no TODO.
#       - Adicionado o programa:
#           * shellcheck
#       - Redividido os programas instaláveis em duas catgorias: 
#	    <Programas do Repositório> e <Programas Externos>
#    
#    v0.5.0 : 2017-05-30, Vitor R. Di Toro:
#       - Corrigida a tabulação deste arquivo.
#       - Adicionado a criação de ~/.vimrc, para a configuração da tabulação
#         do vim.
#       - Atualização do TODO.
#
#    v0.5.1 : 2017-05-30, Vitor R. Di Toro:
#       - Corrigido o TODO.
#       - Corridigo o versionamento de forma retroativa.
#       - Alterado o padrão para as "caixas de título".
#
#    V0.6.0 : 2017-06-24, Vitor R. Di Toro:
#       - Atualizado os links de instalção do WPS Office (10.1.0.5707~a21)
#       - Atualizado o TODO (lista de pendências):
#	    * Adição da pendência do dicionário, corretor gramatical e 
#	      corretor ortográfico (PT-Br) p/ LaTeX.
#       - Adicionado:
#           * texmaker
#           * texmaker-data
#           * texlive
#           * texlive-extra-utils
#           * texlive-font-utils
#           * texlive-games
#           * texlive-htmlxml 
#           * texlive-humanities 
#           * texlive-metapost 
#           * texlive-music 
#           * texlive-omega 
#           * texlive-pictures 
#           * texlive-pstricks 
#           * texlive-publishers 
#           * texlive-science 
#           * texlive-xetex 
#           * texlive-generic-recommended 
#           * texlive-bibtex-extra 
#           * texlive-fonts-extra 
#           * texlive-formats-extra 
#           * texlive-luatex 
#           * texlive-math-extra 
#           * texlive-generic-extra 
#           * texlive-plain-extra 
#           * texlive-latex-extra 
#           * texlive-humanities-doc 
#           * texlive-latex-recommended-doc 
#           * texlive-metapost-doc 
#           * texlive-pictures-doc 
#           * texlive-pstricks-doc 
#           * texlive-publishers-doc 
#           * texlive-science-doc 
#           * texlive-latex-base-doc 
#           * texlive-latex-extra-doc 
#           * texlive-fonts-extra-doc 
#           * texlive-fonts-recommended-doc 
#           * texlive-lang-portuguese 
#           * texlive-lang-english
#           * texlive-lang-greek
#
#    V0.6.1 : 2017-07-17, Vitor R. Di Toro:
#       - Adicionado os pacotes "libgoo-canvas-perl" e "gnome-web-photo" para
#         o funcionamento do editor de imagens natido do Shutter no Linux Mint. 
#	- Atualizado o  TODO, para referenciar as novas versões do Debian e do 
#         Linux Mint.
#       - Realizado o Merge da versão existente no GitHub e a versão local, com
#         a correção da numeração das versões, adequando-a após o merge.
#       * Obs: Exqueci de "comitar" algumas mudanças que havia feito no
#              repositório local do meu notebook, gerando uma inconsistência
#              entre a versão do repositório e a versão local, que deve de ser
#              corrigida manualmente.
#
#
#    V0.6.2 : 2017-08-01, Vitor R. Di Toro:
#       - Adicionado:
#           * Atom - A hackable text editor for the 21st Century
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
WPS_32="http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb"
WPS_64="http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb"
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


# Install "shutter" && Pacotes necessário apenas no Mint
#    Shutter - Feature-rich Screenshot Tool 
sudo apt-get install shutter

# OBS: No Linux Mint, a edição de imagens nativa do Shutter não funciona por
#      falta dos pacotes "libgoo-canvas-perl" e "gnome-web-photo", deviso a
#      isso, faz-se necessári a instação do dos mesmos.
sudo apt install libgoo-canvas-perl gnome-web-photo 


# Install "ppa-purge"
#    ppa-purge - disables a PPA and reverts to official packages
sudo apt-get install ppa-purge


# Install "gparted"
#    gparted - GNOME partition editor
sudo apt-get install gparted


# Install "shellcheck"
#    shellcheck - Shell script analysis tool
sudo apt-get install shellcheck


# TexLive (Com tudo mais que possa ser útil)
#    TeX Live: A decent selection of the TeX Live packages
sudo apt-get install texlive texlive-extra-utils texlive-font-utils texlive-games texlive-htmlxml texlive-humanities texlive-metapost texlive-music texlive-omega texlive-pictures texlive-pstricks texlive-publishers texlive-science texlive-xetex texlive-generic-recommended texlive-bibtex-extra texlive-fonts-extra texlive-formats-extra texlive-luatex texlive-math-extra texlive-generic-extra texlive-plain-extra texlive-latex-extra texlive-humanities-doc texlive-latex-recommended-doc texlive-metapost-doc texlive-pictures-doc texlive-pstricks-doc texlive-publishers-doc texlive-science-doc texlive-latex-base-doc texlive-latex-extra-doc texlive-fonts-extra-doc texlive-fonts-recommended-doc texlive-lang-portuguese texlive-lang-english texlive-lang-greek


# TexMaker
#    The Universal LaTeX editor
sudo apt-get install texmaker texmaker-data



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


# Atom
#    A hackable text editor for the 21st Century
cd ~/Downloads
wget https://atom.io/download/deb -O atom.deb
sudo gdebi atom.deb && \
sudo rm -f atom.deb



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
#  - Adicionar os dicionários de LaTeX (pt-br):
#	- https://sites.google.com/site/latexgrucad/dicionario
#
#   - Realizar testes e adequações do Script em VMs com:
#       * Debian - 9
#       * Mint Cinnamon Edition - 18.2
#       * Ubuntu - 16.04 LST
