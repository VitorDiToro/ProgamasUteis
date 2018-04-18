#!/bin/bash
# 
# Autor        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Criado em    : 2017-09-06 
#
# Versão Atual : v0.1.0
#
#-------------------------------------------------------------------------------
#
# Finalidade:
#    Auxiliar na instalação do WPS Office;
#    Auxiliar na configuração do idioma da interface;
#    Auxiliar na condifuração do dicionário para PT-Br;
#    Auxiliar na intalação das fontes tipocráfias mais comuns;
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-09-06, Vitor R. Di Toro:
#       - Versão Inicial

#
#-------------------------------------------------------------------------------



#=======================================#
#  Constantes do Programa               #
#=======================================#

# Verifica a arquitetura do Sistema (32 ou 64 bits)
ARQUITETURA_SISTEMA=`getconf LONG_BIT`

# WPS Office - WPS
WPS_32="http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb"
WPS_64="http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb"
WPS_FONTES="http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb"
WPS_PTBR="https://www.dropbox.com/s/9dhmhz5tjuerv9m/wps-office-mui-pt-br_1.1.0-0kaiana1_all.deb"
WPS_DICIONARIO="https://github.com/VitorDiToro/ProgramasUteis/files/raw/master/wps-office-language-all_0.1_all.deb"

#===============================================================================



#======================================#
#  Instalação do WPS e afins           #
#======================================#

# Install WPS Office
#    The Most Compatible Free Office Suite
cd ~/Downloads
if test "$ARQUITETURA_SISTEMA" = "64"
then
    wget $WPS_64 -O wps-office.deb
else
    wget $WPS_32 -O wps-office.deb
fi
sudo dpkg -i wps-office.deb && \
sudo rm -f wps-office.deb


# Instalação das Fontes para o WPS-Office 
cd /tmp
git clone https://github.com/iamdh4/ttf-wps-fonts.git
cd ttf-wps-fonts
sudo bash install.sh
rm -rf /tmp/ttf-wps-fonts

cd /tmp
wget $WPS_FONTES -O wps-fontes.deb
sudo dpkg -i  wps-fontes.deb &&
sudo rm -f wps-fontes.deb


# Instalação do pacote de tradução da interface do WPS-Office para PT-BR
cd /tmp
wget $WPS_PTBR -O wps-traducao.deb
sudo dpkg -i wps-traducao.deb && \
sudo rm -f wps-traducao.deb


# Instalação do pacote M$ Core Fonts
sudo apt-get install ttf-mscorefonts-installer


# Instalação do dicionário do WPS-Office com suporte a multiplos idiomas.
# OBS: Por ser uma versão BETA, o dicionário PT-Br ainda contem alguns erros
#      de grafia e falta de algumas palavras. 
cd /tmp
wget $WPS_DICIONARIO -O wps-dicionario.deb
sudo dpkg -i wps-dicionario.deb && \
sudo rm -f wps-dicionario.deb

echo $'
Para alterar o idioma do dicionário padrão do WPS, vá no menu superior em:

    Rever >> Definir Idioma

E escolha o idioma desejado.

'
