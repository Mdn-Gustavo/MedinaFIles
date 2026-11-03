# HEYA!!  THIS IS MY DOTFILES

Este repositório contém meus arquivos de configuração pessoais (dotfiles) para o Void Linux. Ele serve como backup e facilita a formatação ou replicação do meu ambiente em outras máquinas.

## O que está incluso?
O repositório tem as minhas configs do dia a dia . As principais configurações salvas são:
- **Gerenciadores de Janela:** i3wm, Sway, Niri
- **Terminais:** Alacritty, Kitty
- **Editor:** Neovim (`nvim`)
- **Status/Barras:** Waybar, Polybar, i3status
- **Outros:** Btop, Thunar, Rofi, Pipewire, Spotify-Player

##  Como restaurar os pacotes
A lista de pacotes instalados manualmente no Void Linux está salva no arquivo `pacotes-void.txt`. Para reinstalar todos eles de uma vez em uma máquina nova, utilize:

```bash
sudo xbps-install -S \$(cat pacotes-void.txt):
