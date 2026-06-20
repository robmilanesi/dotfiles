# dotfiles

Configurazione personale per un ambiente **i3wm** su Debian, tema **Gruvbox Dark**.

```
OS:     Debian
WM:     i3
Term:   Alacritty
Shell:  Bash
Font:   JetBrains Mono
```

---

## Struttura

```
~/.config/
├── i3/
│   ├── config          # i3wm — keybinding, layout, colori, gaps
│   └── i3status.conf   # barra di stato (CPU, RAM, rete, volume, orologio)
├── alacritty/
│   └── alacritty.toml  # terminale — Gruvbox Hard, trasparenza, font
└── rofi/
    └── config.rasi     # launcher app — tema Gruvbox, icone
```

---

## Dipendenze

```bash
sudo apt install i3 rofi alacritty ranger dunst \
                 fonts-jetbrains-mono scrot \
                 network-manager-gnome pulseaudio-utils
```

Font opzionale ma consigliato per icone migliori nella barra:
[JetBrains Mono Nerd Font](https://www.nerdfonts.com)

---

## Installazione su una nuova macchina

```bash
# 1. Clona il repo bare
git clone --bare git@github.com:robmilanesi/dotfiles.git ~/.dotfiles

# 2. Definisci l'alias
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# 3. Applica i file
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

Se `checkout` da errore per file già esistenti:

```bash
mkdir -p ~/.dotfiles-backup
dotfiles checkout 2>&1 | grep "^\s" | awk '{print $1}' | \
  xargs -I{} mv {} ~/.dotfiles-backup/{}
dotfiles checkout
```

---

## Keybinding principali

Il modifier è **Super** (tasto Windows).

| Tasto | Azione |
|---|---|
| `Super + Return` | Terminale |
| `Super + D` | Launcher app (rofi) |
| `Super + Tab` | Switcher finestre |
| `Super + Q` | Chiudi finestra |
| `Super + H/J/K/L` | Focus finestre |
| `Super + Shift + H/J/K/L` | Sposta finestra |
| `Super + S / V` | Split orizzontale / verticale |
| `Super + F` | Fullscreen |
| `Super + W` | Layout a tab |
| `Super + R` | Modalità resize |
| `Super + [1–0]` | Cambia workspace |
| `Super + Shift + [1–0]` | Sposta finestra al workspace |
| `Super + Shift + C` | Ricarica config |
| `Super + Shift + R` | Restart i3 |
| `Super + Shift + X` | Lock screen |

---

## Gestione

```bash
# Aggiungi un file
dotfiles add ~/.config/i3/config
dotfiles commit -m "i3: aggiorna keybinding"
dotfiles push

# Stato
dotfiles status
dotfiles diff
```
