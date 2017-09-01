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


echo $'[global_config]
  enabled_plugins = ActivityWatch, LaunchpadCodeURLHandler, APTURLHandler, LaunchpadBugURLHandler
  always_on_top = True
  tab_position = bottom
  sticky = True
[keybindings]
  hide_window = F12
[profiles]
  [[default]]
    background_darkness = 0.86
    background_image = None
    background_type = transparent
    split_to_group = True
    foreground_color = \"#ffffff\"
    scrollback_infinite = True
[layouts]
  [[default]]
    [[[child0]]]
      position = 0:24
      type = Window
      order = 0
      parent = \"\"
      size = 1679, 598
    [[[child1]]]
      position = 839
      type = HPaned
      order = 0
      parent = child0
    [[[terminal3]]]
      profile = default
      type = Terminal
      order = 1
      parent = child1
    [[[terminal2]]]
      profile = default
      type = Terminal
      order = 0
      parent = child1
  [[original]]
    [[[child1]]]
      type = Terminal
      parent = window0
      profile = default
    [[[window0]]]
      type = Window
      order = 0
      parent = \"\"
[plugins]
' > ~/.config/terminator/config && \
echo $'
=======================================================================
\tConfigurações do Terminator atualizadas com sucesso \\o/
=======================================================================
   Shortcuts:
     F12 (oculta e exibe o terminal, tipo o Guakes )
     crtl shift O (para dividir a tela na horizontal)
     crtl shift E (dividir tela na vertical)
     crtl shift X (Maximizar / Minimizar Tela atual)
     crtl shift T (cria mais uma tab)
     crtl shift W (fecha console atual)
'
