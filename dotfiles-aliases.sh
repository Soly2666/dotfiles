#!/bin/bash

# Dotfiles Management Aliases
# Add these aliases to your ~/.zshrc or run this script to add them temporarily

# Quick backup of dotfiles
alias dotfiles-backup='~/dotfiles/backup-dotfiles.sh'

# Quick commit and push changes
alias dotfiles-push='cd ~/dotfiles && git add . && git commit -m "Update dotfiles $(date +%Y-%m-%d\ %H:%M)" && git push'

# Quick pull latest changes
alias dotfiles-pull='cd ~/dotfiles && git pull'

# View dotfiles status
alias dotfiles-status='cd ~/dotfiles && git status'

# View dotfiles log
alias dotfiles-log='cd ~/dotfiles && git log --oneline -10'

# Go to dotfiles directory
alias dotfiles-cd='cd ~/dotfiles'

echo "✅ Dotfiles aliases loaded! Available commands:"
echo "   dotfiles-backup  - Run backup script"
echo "   dotfiles-push    - Commit and push changes"
echo "   dotfiles-pull    - Pull latest changes"
echo "   dotfiles-status  - Show git status"
echo "   dotfiles-log     - Show recent commits"
echo "   dotfiles-cd      - Navigate to dotfiles directory"