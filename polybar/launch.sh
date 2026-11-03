#!/bin/bash

# Mata instâncias antigas
killall -q polybar

# Espera os processos serem encerrados
while pgrep -u $USER -x polybar >/dev/null; do sleep 1; done

# Detecta os monitores e lança a barra em cada um
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload &
  done
else
  polybar --reload &
fi
