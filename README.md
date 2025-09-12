# My Dotfiles

Personal configuration files and settings backup.

## Quick Start

### Backup your current dotfiles
```bash
./backup-dotfiles.sh
```

### Initialize Git repository (first time only)
```bash
cd ~/dotfiles
git init
git add .
git commit -m "Initial dotfiles backup"
```

### Add remote repository (replace with your repo URL)
```bash
git remote add origin https://github.com/yourusername/dotfiles.git
git branch -M main
git push -u origin main
```

## What's Backed Up

### Dotfiles
- `.zshrc` - Zsh configuration
- `.zshenv` - Zsh environment variables
- `.vimrc` - Vim configuration
- `.gitconfig` - Git configuration
- `.tmux.conf` - Tmux configuration
- `.hyper.js` - Hyper terminal configuration
- FZF configurations
- iTerm2 integration files

### Config Directories
- `btop/` - System monitor configuration
- `htop/` - Process viewer configuration
- `neofetch/` - System info tool configuration
- `iterm2/` - Terminal configuration
- `raycast/` - Productivity tool configuration
- `mc/` - Midnight Commander configuration
- `broot/` - Directory tree viewer configuration

### Additional Backups
- Oh My Zsh custom configurations
- Homebrew packages list (`Brewfile`)
- System information
- Aliases reference

## Dotfiles Management Strategies

### 1. Git Repository Method (Current Setup)
- ✅ Version control
- ✅ Easy to sync across machines
- ✅ Backup history
- ✅ Can share configurations

### 2. Symbolic Links Method
Create symlinks to keep files in sync:
```bash
# Example: Link your backed up zshrc
ln -s ~/dotfiles/backup-latest/.zshrc ~/.zshrc
```

### 3. GNU Stow Method (Advanced)
Install and use GNU Stow for elegant symlink management:
```bash
brew install stow
# Organize dotfiles in stow-compatible structure
stow zsh vim git
```

### 4. Mackup Integration (You're already using this!)
Your `.zshrc` is already managed by Mackup and synced to iCloud.

## Automation

### Daily Backup (Optional)
Add to crontab for automatic daily backups:
```bash
# Edit crontab
crontab -e

# Add this line for daily backup at 2 AM
0 2 * * * /Users/islamelbanna/dotfiles/backup-dotfiles.sh
```

### Quick Sync Alias
Add to your `.zshrc`:
```bash
alias dotfiles-backup='~/dotfiles/backup-dotfiles.sh'
alias dotfiles-push='cd ~/dotfiles && git add . && git commit -m "Update dotfiles $(date +%Y-%m-%d)" && git push'
```

## Restoration

To restore dotfiles on a new machine:

1. Clone this repository:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
```

2. Copy or symlink files from the latest backup:
```bash
# Find latest backup
ls ~/dotfiles/backup-*

# Copy files (replace YYYYMMDD-HHMMSS with actual backup date)
cp ~/dotfiles/backup-YYYYMMDD-HHMMSS/.zshrc ~/
cp ~/dotfiles/backup-YYYYMMDD-HHMMSS/.vimrc ~/
# ... etc
```

3. Restore Homebrew packages:
```bash
cd ~/dotfiles/backup-YYYYMMDD-HHMMSS
brew bundle install
```

## Tips

- **Test before committing**: Always test your dotfiles on a new session
- **Document changes**: Use meaningful commit messages
- **Backup before major changes**: Run backup script before system updates
- **Keep it organized**: Group related configurations together
- **Use branches**: Create branches for experimental configurations

## Security Note

⚠️ **Never commit sensitive information like:**
- API keys
- Passwords
- SSH private keys
- Personal tokens

Use environment variables or separate, non-tracked files for secrets.