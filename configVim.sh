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
#   Sobrescreve o arquivo "~/.config/terminator/config", com as configurações 
#   personalizadas p/ o Terminator.
#
#   Shortcuts:
#    F12 (oculta e exibe o terminal, tipo o Guakes )
#    crtl shift O (para dividir a tela na horizontal)
#    crtl shift E (dividir tela na vertical)
#    crtl shift X (Maximizar / Minimizar Tela atual)
#    crtl shift T (cria mais uma tab)
#    crtl shift W (fecha console atual) 
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-05-08, Vitor R. Di Toro:
#       - Criada a versão inial deste documento
#
#-------------------------------------------------------------------------------


echo "
set tabstop=4       \" The width of a TAB is set to 4.
                    \" Still it is a \t. It is just that
                    \" Vim will interpret it to be having
                    \" a width of 4.

set shiftwidth=4    \" Indents will have a width of 4

set softtabstop=4   \" Sets the number of columns for a TAB

set expandtab       \" Expand TABs to spaces

set statusline+=%F\ %l\:%c
" > ~/.vimrc && \
echo $'
=======================================================================
\t   Configurações do Vim atualizadas com sucesso \\o/
=======================================================================
'
