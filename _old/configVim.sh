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
#
#   Sobrescreve o arquivo "~/.vimrc", com as configurações 
#   personalizadas p/ do Vim.
#
#-------------------------------------------------------------------------------
#
# Histórico:
#
#    v0.1.0 : 2017-05-08, Vitor R. Di Toro:
#       - Criada a versão inial deste documento
#    
#    v0.1.1 : 2017-09-02, Vitor R. Di Toro:
#       - Corrigido a descrição de finalidade
#       - Habilitado o Highlighting (syntax on)
#
#-------------------------------------------------------------------------------


echo "

syntax on

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

