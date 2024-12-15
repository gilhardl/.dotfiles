#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Dotfiles directory
DOTFILES_DIR="$HOME/.dotfiles"

# List of dotfiles to symlink in $HOME
dotfiles=(".gitconfig" ".npmrc" ".tool-versions" ".zprofile" ".zshrc")

print() {
    if [[ $2 = "info" ]]; then
        echo -e "${BLUE}$1${NC}"
    elif [[ $2 = "success" ]]; then
        echo -e "${GREEN}$1${NC}"
    elif [[ $2 = "warning" ]]; then
        echo -e "${YELLOW}$1${NC}"
    elif [[ $2 = "error" ]]; then
        echo -e "${RED}$1${NC}"
    else
        echo -e "${NC}$1${NC}"
    fi
}

download_dotfiles() {
    if [[ -d "$DOTFILES_DIR" ]]; then
        print "\tUpdating dotfiles..." "info"
        cd "$DOTFILES_DIR"
        git pull --rebase --quiet
        cd -
        print "\tDotfiles updated" "success"
    else
        print "\tDownloading dotfiles..." "info"
        git clone https://github.com/gilhardl/dotfiles.git "$DOTFILES_DIR" --quiet
        print "\tDotfiles downloaded" "success"
    fi
}

backup_dotfiles() {
    print "\tBacking up existing dotfiles..." "info"
    local backup_dir="$DOTFILES_DIR/backup/$(date +%Y%m%d_%H%M%S)"

    # Backup existing dotfiles
    for file in "${dotfiles[@]}"; do
        if [[ -f "$HOME/$file" ]] || [[ -L "$HOME/$file" ]]; then
            if [[ ! -d "$backup_dir" ]]; then
                mkdir -p "$backup_dir"
            fi
            mv "$HOME/$file" "$backup_dir/"
        fi
    done

    print "\tBackup completed" "success"
}

symlink_dotfiles() {
    print "\tCreating dotfiles symlinks..." "info"
    for file in "${dotfiles[@]}"; do
        ln -s "$DOTFILES_DIR/$file" "$HOME/$file"
    done
    print "\tDotfiles symlinks created" "success"
}

# Main installation
main() {
    print "Setting up dotfiles..." "info"
    
    download_dotfiles
    backup_dotfiles
    symlink_dotfiles

    print "Dotfiles setup\n" "success"
}

# Run main installation
main