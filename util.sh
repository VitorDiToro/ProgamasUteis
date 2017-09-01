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

#=============================================================================#
#   Constantes do Programa                                                    #
#=============================================================================#

# Verifica a arquitetura do Sistema (32 ou 64 bits)
ARQUITETURA_SISTEMA=`getconf LONG_BIT`

# Master PDF Editor - MPE
MPE_64="http://get.code-industry.net/public/master-pdf-editor-4.1.30_qt5.amd64.deb" 
MPE_32="http://get.code-industry.net/public/master-pdf-editor-4.1.30_i386.deb"

#-------------------------------------------------------------------------------


# Install "gparted"
#    gparted - GNOME partition editor
#====================================================================
sudo apt-get install gparted


# Install "baobab"
#    Baobab - A graphical tool to analyze disk usage
#====================================================================
sudo apt-get install baobab



# Install "qBittorrent"
#    qBittorrent - a Bittorrent client written in C++ / Qt
#====================================================================
sudo apt-get install qbittorrent



# Install "shutter" && Pacotes necessário apenas no Mint
#    Shutter - Feature-rich Screenshot Tool 
#====================================================================
sudo apt-get install shutter

# OBS: No Linux Mint, a edição de imagens nativa do Shutter não 
#      funciona por falta dos pacotes "libgoo-canvas-perl" e
#      "gnome-web-photo". Para resolver o problema,instala-se os
#      dois pacotes.
#====================================================================
sudo apt-get install libgoo-canvas-perl
sudo apt-get install gnome-web-photo



# Install "Master PDF Editor"
#    Master PDF Editor is complete solution for view,
#    print and edit PDF files.
#====================================================================

cd ~/Downloads
if test "$ARQUITETURA_SISTEMA" = "64"
then 
    wget $MPE_64 -O master-pdf-editor.deb
else
    wget $MPE_32 -O master-pdf-editor.deb
fi

sudo gdebi master-pdf-editor.deb && \
sudo rm -f master-pdf-editor.deb
