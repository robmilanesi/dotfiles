# Debian Dotfiles
My dotfile configurations for debian based linux distributions

# Folder Structure
```bash
.
├── assets
│   └── fonts # JetBrains fonts
│       ├── JetBrainsMonoNerdFont-BoldItalic.ttf
│       ├── JetBrainsMonoNerdFont-Bold.ttf
│       ├── JetBrainsMonoNerdFont-Italic.ttf
│       └── JetBrainsMonoNerdFont-Regular.ttf
├── .config
│   └── alacritty # Terminal emulator
│       └── alacritty.toml
├── README.md
├── scripts # Script used for installing packages and dependencies
│   ├── install_font.sh
│   └── install.sh
├── .stow-local-ignore # Stow ignore list for excluding scripts folder
└── .vimrc
```

# Install from scratch
If you are setting up the system for the first time, 
you can use the install script. It will
 - Check and install dependencies (stow, fonts, terminal emulator, ...)
 - Ask you if you want to run stow

```bash
./scripts/install.sh
```
