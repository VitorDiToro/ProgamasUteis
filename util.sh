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
#       - Criada a versão inial deste arquivo
#
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
