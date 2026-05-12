<div align="center">

# ✦ yash3605/dotfiles

**Arch Linux · Hyprland · Tokyo Night**

My personal Linux rice — minimal, keyboard-driven, and fast.

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=flat&logo=arch-linux&logoColor=white)](https://archlinux.org)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=flat&logo=wayland&logoColor=black)](https://hyprland.org)
[![Neovim](https://img.shields.io/badge/Neovim-57A143?style=flat&logo=neovim&logoColor=white)](https://neovim.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---

> ⚠️ **These are my personal dotfiles.** They are shared for reference and inspiration — not as a plug-and-play install script. Adapt them to your own setup. I am not responsible if something breaks.

---

## 🧰 Stack

| Role | Tool |
|---|---|
| **Window Manager** | [Hyprland](https://hyprland.org) — Wayland compositor with tiling & animations |
| **Status Bar** | [Waybar](https://github.com/Alexays/Waybar) |
| **App Launcher** | [Rofi](https://github.com/davatorium/rofi) |
| **Terminal** | [Ghostty](https://ghostty.org) |
| **Shell** | [Fish](https://fishshell.com) |
| **Prompt** | [Starship](https://starship.rs) — Tokyo Night palette |
| **Editor** | [Neovim](https://neovim.io) |
| **Notifications** | [Dunst](https://dunst-project.org) |
| **System Info** | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) |
| **Color Scheme** | [Tokyo Night](https://github.com/folke/tokyonight.nvim) |

---

## 📁 Repository Structure

```
dotfiles/
├── hypr/               # Hyprland config (hyprland.conf, animations, keybinds)
├── old_hyprland/       # Previous Hyprland setup — kept for reference
├── waybar/             # Waybar config + CSS styling
├── rofi/               # Rofi launcher theme
├── ghostty/            # Ghostty terminal config
├── nvim/               # Neovim config (Lua)
├── fish/               # Fish shell config + functions + aliases
├── dunst/              # Dunst notification daemon config
├── fastfetch/          # Fastfetch system info config
└── starship.toml       # Starship prompt — Tokyo Night themed
```

---

## ⚡ Starship Prompt

Custom Starship prompt with **Tokyo Night** palette. Shows:

- OS icon (Arch  )
- Current directory (truncated, repo-aware)
- Git branch + status
- Active language versions: Python · Node.js · Go · Rust · C

```
╭─  ~/projects/movies_api  main ✓  v1.24
╰─ ❯
```

Prompt turns **red** (`❯`) on non-zero exit codes and **purple** (`❮`) in Vim mode.

Config: [`starship.toml`](./starship.toml)

---

## 🪟 Hyprland

Wayland-native tiling window manager. Config lives in `hypr/`.

Key things configured:
- Monitor setup and workspace rules
- Window animations and gaps
- Keybinds for workspace switching, window management, launching apps
- Blur, rounded corners, and shadow via `decoration`
- `hyprpaper` or `swaybg` for wallpaper
- `hyprlock` / `swaylock` for screen lock
- Idle inhibit rules

> The `old_hyprland/` folder contains my previous config before a full rework — useful if you want to see the evolution.

Config: [`hypr/`](./hypr)

---

## 📊 Waybar

Custom Waybar config with Tokyo Night styling via CSS.

Modules typically include: workspaces · window title · network · battery · clock · audio (wireplumber/pulseaudio) · tray

Config: [`waybar/`](./waybar)

---

## 🚀 Rofi

App launcher styled to match the Tokyo Night theme. Used for:
- Application launching (`rofi -show drun`)
- Window switching (`rofi -show window`)
- Custom scripts (power menu, etc.)

Config: [`rofi/`](./rofi)

---

## 👻 Ghostty Terminal

Ghostty is a fast, GPU-accelerated terminal emulator. Config covers:
- Font family and size
- Tokyo Night color palette
- Padding, opacity, cursor style
- Shell integration with Fish

Config: [`ghostty/`](./ghostty)

---

## 🐟 Fish Shell

Fish is my daily shell — sane defaults, autosuggestions, and no POSIX baggage.

Config includes:
- Aliases and abbreviations
- Custom functions
- Environment variables and PATH setup
- Integration with Starship for prompt

Config: [`fish/`](./fish)

---

## 📝 Neovim

Neovim config written in **Lua** 

Likely includes:
- Plugin manager (lazy.nvim or packer)
- LSP setup for Go, Rust, JavaScript, Python
- Treesitter for syntax highlighting
- Tokyo Night colorscheme
- Telescope for fuzzy finding
- Custom keybinds

Config: [`nvim/`](./nvim)

---

## 🔔 Dunst

Notification daemon config for:
- Tokyo Night styled popups
- Timeout and urgency levels
- Font, icon, and padding settings

Config: [`dunst/`](./dunst)

---

## 📟 Fastfetch

Custom Fastfetch layout for system info display on terminal open.

Config: [`fastfetch/`](./fastfetch)

---

## 🛠️ Installation

> Manual setup — no automated install script yet.

### 1. Install dependencies

```bash
# Core
sudo pacman -S hyprland waybar rofi dunst fish neovim

# Terminal
sudo pacman -S ghostty  # or from AUR: yay -S ghostty

# Prompt & fetch
sudo pacman -S starship fastfetch

# Optional but recommended
sudo pacman -S hyprpaper hyprlock hypridle wireplumber pipewire
```

### 2. Clone the repo

```bash
git clone https://github.com/yash3605/dotfiles ~/dotfiles
```

### 3. Symlink configs to `~/.config`

```bash
# Run from inside the cloned repo
ln -sf ~/dotfiles/hypr       ~/.config/hypr
ln -sf ~/dotfiles/waybar     ~/.config/waybar
ln -sf ~/dotfiles/rofi       ~/.config/rofi
ln -sf ~/dotfiles/ghostty    ~/.config/ghostty
ln -sf ~/dotfiles/nvim       ~/.config/nvim
ln -sf ~/dotfiles/fish       ~/.config/fish
ln -sf ~/dotfiles/dunst      ~/.config/dunst
ln -sf ~/dotfiles/fastfetch  ~/.config/fastfetch
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
```

### 4. Set Fish as your default shell

```bash
chsh -s $(which fish)
```

### 5. Install Starship (if not already)

```bash
curl -sS https://starship.rs/install.sh | sh
```

---

## 🎨 Color Palette — Tokyo Night

| Name | Hex | Preview |
|---|---|---|
| Background | `#1e2030` | Dark blue-grey |
| Foreground | `#c0caf5` | Soft lavender |
| Blue | `#7aa2f7` | Accent blue |
| Purple | `#bb9af7` | Accent purple |
| Cyan | `#7dcfff` | Accent cyan |
| Green | `#9ece6a` | Strings / success |
| Yellow | `#e0af68` | Warnings |
| Red | `#f7768e` | Errors |

---

## 📌 Notes

- These configs are tested on **Arch Linux** with **Hyprland** on Wayland
- Some things may behave differently on other distros or compositors
- The `old_hyprland/` directory is kept intentionally for reference
- If something is broken, check the respective tool's documentation first

---

## 📬 Contact

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Yash_Pratap_Kulshrestha-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/yash-pratap-kulshrestha-97404b291)
[![GitHub](https://img.shields.io/badge/GitHub-yash3605-black?style=flat&logo=github)](https://github.com/yash3605)

---

<div align="center">
<sub>Made with patience, broken more times than I can count, and slowly perfected. 🌙</sub>
</div>
