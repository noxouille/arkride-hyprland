# Arkride Hyprland Theme

> **Disclaimer:** This software is provided "as is", without warranty of any kind. Use at your own risk. The author is not responsible for any damage, data loss, or issues that may arise from using this theme or running the install scripts. Always review scripts before executing them and back up your configurations.

A dark theme for Hyprland inspired by **Kuro no Kiseki / Trails through Daybreak**, with colors based on the Arkride Solutions employees.

[![Preview](https://img.youtube.com/vi/tI818oIAUZA/maxresdefault.jpg)](https://youtu.be/tI818oIAUZA)

## Color Palette

| Character | Hex | Usage |
|-----------|-----|-------|
| **Van Arkride** | `#5080C0` | Primary, functions |
| **Agnès Claudel** | `#EA7475` | Keywords |
| **Feri Al-Fayed** | `#F8BA65` | Constants, warnings |
| **Aaron Wei** | `#D94848` | Errors |
| **Risette Twinings** | `#A4D8EC` | Types, info |
| **Quatre Salision** | `#7F7B78` | Properties |
| **Judith Lanster** | `#E07840` | Decorators |
| **Bergard Zeman** | `#A86078` | Deprecated |
| **Elaine Auclair** | `#52B5A4` | Strings, success |

## Structure

```
arkride-hyprland/
├── arkride-gallery/          # Character images
│   ├── arkride-gallery.py
│   ├── portrait/
│   └── side/
│
├── colors/                   # Color reference
│   ├── _colors.scss
│   └── palette.md
│
├── config/                   # → ~/.config/colorschemes/arkride/
│   ├── colors.css              # Shared colors (Waybar, wlogout, SwayNC)
│   ├── foot.ini
│   ├── gtk-4.0/gtk.css
│   ├── gtk-theme               # GTK theme name for gsettings
│   ├── hyprland.conf
│   ├── kitty.conf
│   ├── logo.png                # Fastfetch logo
│   ├── matugen-base.json       # Base colors for matugen/walset wallpaper picker
│   ├── nvim-theme
│   ├── rofi.rasi
│   ├── scripts/
│   │   ├── showcase.sh
│   │   ├── toggle-music.sh
│   │   └── typing-demo.lua
│   ├── showcase.conf
│   ├── vscodium-theme
│   ├── wallpaper-default       # Default wallpaper path (relative to ~/Pictures/Wallpapers/)
│   ├── wallpaper.jpg           # Fallback/sample wallpaper
│   ├── wallpapers              # List of compatible wallpapers for walset picker
│   └── waybar-layout           # Default waybar layout for this theme
│
├── extras/                   # Installed separately
│   ├── nvim/arkride.nvim/
│   │   ├── colors/arkride.lua
│   │   └── lua/arkride/
│   └── vscode/
│
├── themes/                   # → ~/.themes/
│   └── Arkride/
│       ├── index.theme
│       └── gtk-3.0/gtk.css
│
├── install.sh
└── README.md
```

## Installation

### Quick Install

```bash
git clone https://github.com/noxouille/arkride-hyprland
cd arkride-hyprland
./install.sh --all
```

### Manual Install

**Config files** (symlinked to `~/.config/`):
```bash
./install.sh
# Select option 2
```

**GTK theme** (symlinked to `~/.themes/`):
```bash
./install.sh
# Select option 3
```

## Usage

### Hyprland
Add to `~/.config/hypr/hyprland.conf`:
```bash
source = ~/.config/hyprland/colors.conf
```

### Kitty
Add to `~/.config/kitty/kitty.conf`:
```bash
include arkride.conf
```

### Foot
Add to `~/.config/foot/foot.ini`:
```ini
include=~/.config/foot/arkride.ini
```

### Rofi
Add to `~/.config/rofi/config.rasi`:
```
@theme "arkride"
```

### Waybar
Add to your `style.css`:
```css
@import "colors.css";
```

The `waybar-layout` file specifies the default waybar layout when switching to this theme.

### Wallpapers

The theme includes wallpaper integration with the `walset` wallpaper picker:

- **`wallpaper-default`** - Path to the default wallpaper (relative to `~/Pictures/Wallpapers/`). Applied automatically when switching to this theme via `apply-theme.sh`.

- **`wallpapers`** - List of compatible wallpapers for the theme. When this file exists, the `walset` picker will only show wallpapers from this list. Supports:
  - Individual files: `Trails/daybreak/cal-w2102-m.jpg`
  - Glob patterns: `Trails/daybreak/*`
  - Comments: Lines starting with `#`

- **`matugen-base.json`** - Base colors for [matugen](https://github.com/InioX/matugen). Required for `walset` to work properly. Defines custom color variables (bg, fg, color0-15) that matugen templates use alongside wallpaper-extracted accent colors.

If `wallpapers` file doesn't exist, all wallpapers in `~/Pictures/Wallpapers/` are available.

### GTK Theme
```bash
# Using nwg-look
nwg-look
# Select "Arkride"

# Or gsettings
gsettings set org.gnome.desktop.interface gtk-theme 'Arkride'
```

### Neovim (LazyVim)
Add to `~/.config/nvim/lua/plugins/colorscheme.lua`:
```lua
return {
  {
    dir = "~/.local/share/nvim/themes/arkride.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "arkride" },
  },
}
```

### VSCodium
```bash
./install.sh
# Select option 5
codium --install-extension ~/arkride-theme.vsix
```
Then `Ctrl+K Ctrl+T` → Select "Arkride"

## Credits

- Inspired by [Trails through Daybreak](https://kiseki.fandom.com/wiki/The_Legend_of_Heroes:_Trails_through_Daybreak)

## License

MIT
