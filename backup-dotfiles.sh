#!/bin/bash

# Dotfiles Backup Script
# This script backs up your important dotfiles to the dotfiles directory

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$DOTFILES_DIR/backup-$(date +%Y%m%d-%H%M%S)"

echo "🔄 Starting dotfiles backup..."
echo "📁 Backup directory: $BACKUP_DIR"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# List of dotfiles to backup
DOTFILES=(
    ".zshrc"
    ".zshenv"
    ".vimrc"
    ".vimrc.bak"
    ".gitconfig"
    ".gitignore_global"
    ".tmux.conf"
    ".fzf.zsh"
    ".fzf.bash"
    ".hyper.js"
    ".iterm2_shell_integration.zsh"
    ".ilab-complete.zsh"
)

# List of config directories to backup
CONFIG_DIRS=(
    ".config/btop"
    ".config/htop"
    ".config/neofetch"
    ".config/iterm2"
    ".config/raycast"
    ".config/mc"
    ".config/broot"
)

echo "📄 Backing up dotfiles..."
for file in "${DOTFILES[@]}"; do
    if [ -f "$HOME/$file" ] || [ -L "$HOME/$file" ]; then
        echo "  ✅ Backing up $file"
        cp -L "$HOME/$file" "$BACKUP_DIR/" 2>/dev/null || echo "  ⚠️  Could not backup $file"
    else
        echo "  ⏭️  Skipping $file (not found)"
    fi
done

echo "📁 Backing up config directories..."
for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$HOME/$dir" ]; then
        echo "  ✅ Backing up $dir"
        mkdir -p "$BACKUP_DIR/$(dirname "$dir")"
        cp -r "$HOME/$dir" "$BACKUP_DIR/$dir"
    else
        echo "  ⏭️  Skipping $dir (not found)"
    fi
done

# Backup Oh My Zsh custom directory
if [ -d "$HOME/.oh-my-zsh/custom" ]; then
    echo "  ✅ Backing up Oh My Zsh custom directory"
    mkdir -p "$BACKUP_DIR/.oh-my-zsh"
    cp -r "$HOME/.oh-my-zsh/custom" "$BACKUP_DIR/.oh-my-zsh/"
fi

# Create a system info file
echo "💻 Creating system info..."
cat > "$BACKUP_DIR/system-info.txt" << EOF
Backup Date: $(date)
Hostname: $(hostname)
OS: $(uname -a)
Shell: $SHELL
Zsh Version: $(zsh --version)
Git Version: $(git --version)
Homebrew Packages: See brew-packages.txt
EOF

# Backup Homebrew packages list (if available)
if command -v brew &> /dev/null; then
    echo "🍺 Backing up Homebrew packages..."
    brew list --formula > "$BACKUP_DIR/brew-packages.txt"
    brew list --cask > "$BACKUP_DIR/brew-casks.txt"
    brew bundle dump --file="$BACKUP_DIR/Brewfile" --force
fi

# Backup aliases reference
if [ -f "$HOME/aliases-reference.md" ]; then
    echo "  ✅ Backing up aliases reference"
    cp "$HOME/aliases-reference.md" "$BACKUP_DIR/"
fi

echo "✨ Backup completed successfully!"
echo "📁 Backup saved to: $BACKUP_DIR"
echo ""
echo "🚀 Next steps:"
echo "   1. cd $DOTFILES_DIR"
echo "   2. git init (if not already done)"
echo "   3. git add ."
echo "   4. git commit -m 'Dotfiles backup $(date +%Y-%m-%d)'"
echo "   5. git remote add origin <your-repo-url>"
echo "   6. git push -u origin main"