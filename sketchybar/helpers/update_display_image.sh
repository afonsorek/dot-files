#!/bin/bash

# Detecta o display ativo (por exemplo, usando displayplacer ou outras ferramentas)
ACTIVE_DISPLAY=$(yabai -m query --displays --display | jq -r '.index')

# Escolhe a imagem com base no display
IMAGE_PATH="$HOME/.config/sketchybar/media/bar.png"

if [ "$ACTIVE_DISPLAY" -eq 2 ]; then
  IMAGE_PATH="$HOME/.config/sketchybar/media/bar-big.png"
fi

# Atualiza o item no sketchybar
sketchybar --set apple background.image="$IMAGE_PATH"
