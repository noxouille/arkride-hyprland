#!/bin/sh

# Arkride Theme Showcase
# Chains all demo elements with timed transitions

SCRIPT_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/colorschemes/arkride/scripts"
GALLERY_DIR="$HOME/.local/share/arkride-gallery"

# 1. Start music immediately (if configured)
"$SCRIPT_DIR/toggle-music.sh"

# 2. Delay 5s, switch to workspace 1 and open gallery (left) + typing demo (right)
sleep 5
hyprctl dispatch workspace 1
kitty --class arkride-gallery -o initial_window_width=70c -o initial_window_height=45c zsh -c "python $GALLERY_DIR/arkride-gallery.py portrait; read -sk1" &
kitty --class arkride-nvim -o initial_window_width=70c -o initial_window_height=45c nvim -c "luafile $SCRIPT_DIR/typing-demo.lua" &

# 3. After 10s, close gallery and open fastfetch via Super+F
sleep 10
hyprctl dispatch closewindow class:arkride-gallery
kitty --class floating-fetch -o initial_window_width=45c -o initial_window_height=12c zsh -ic "fastfetch; read -sk1" &

# 4. Delay 5s, switch to workspace 2, start cmatrix (background) + htop (foreground)
sleep 5
hyprctl dispatch workspace 2
kitty --class arkride-cmatrix cmatrix -ra &
sleep 0.3
kitty --class arkride-htop htop &

# 5. Delay 5s, switch to workspace 3, start vscodium
sleep 5
hyprctl dispatch workspace 3
codium $GALLERY_DIR/arkride-gallery.py &
