#!/bin/bash
#Criado por Rogério M. de Queiroz
#Data: 10/08/2015
#Uma simples solução para Habilitar/Desabilitar o touchpad do Dell XPS 13 9343.
#Podendo ser adicionado como atalho na tecla F7.
#Matteus Silva: usei no dell inspiron 14 série 5000. Perfeito.

declare STATE
STATE=`gsettings get org.gnome.desktop.peripherals.touchpad send-events | tr \' X`
echo $STATE
if [ "$STATE" == 'XenabledX' ]
then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
    echo "Touchpad disabled."
    notify-send -t 200 "Touchpad Disabled."
elif [ "$STATE" == 'XdisabledX' ]
then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
    echo "Touchpad enabled."
    notify-send -t 200 "Touchpad Enabled."
else
    notify-send -t 200 "Touchpad in other mode."
fi
