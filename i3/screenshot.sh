#!/bin/bash

DIR="$HOME/Imagens/Screenshots"
FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S).png"

mkdir -p "$DIR"

case "$1" in
area)
  AREA=$(slop)

  if [ -n "$AREA" ]; then
    maim -g "$AREA" "$FILE"
    MSG="Área capturada"
  else
    MSG="Cancelado"
    exit 1
  fi
  ;;

monitor)
  maim "$FILE"
  MSG="Tela capturada"
  ;;

*)
  echo "Uso: screenshot.sh [area|monitor]"
  exit 1
  ;;
esac

# copia pro clipboard
xclip -selection clipboard -t image/png -i "$FILE"

# notificação
notify-send "Screenshot" "$MSG" -i "$FILE"
