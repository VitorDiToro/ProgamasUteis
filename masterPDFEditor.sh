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
#    Auxiliar na instalação do Master PDF Editor.
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-09-02, Vitor R. Di Toro:
#       - Versão Inicial
#
#-------------------------------------------------------------------------------



#=============================================================================#
#   Constantes do Programa                                                    #
#=============================================================================#

# Define o local de onde está sendo rodado o script
LOCAL = $pwd

# Verifica a arquitetura do Sistema (32 ou 64 bits)
ARQUITETURA_SISTEMA=`getconf LONG_BIT`

# Master PDF Editor - MPE
MPE_64="http://get.code-industry.net/public/master-pdf-editor-4.1.30_qt5.amd64.deb" 
MPE_32="http://get.code-industry.net/public/master-pdf-editor-4.1.30_i386.deb"

#-------------------------------------------------------------------------------



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

cd $LOCAL
