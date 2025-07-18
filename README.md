Dotfiles

My personal configuration files for zsh, tmux, and neovim.

## Installation

### Prerequisites

- Git
- Neovim (0.9+)
- Zsh
- Tmux

### Manual Installation with Symlinks

#### 1. Create symlinks

**Zsh Configuration:**
```bash
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
```

**Tmux Configuration:**
```bash
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

**Neovim Configuration:**
```bash
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

#### 2. Install Tmux Plugin Manager (TPM)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### 3. Reload configurations

**Zsh:**
```bash
source ~/.zshrc
```

**Tmux:**
```bash
tmux source-file ~/.tmux.conf
```

### Updating

Since these are symlinks, any changes you make to the files in `~/dotfiles/` will automatically be reflected in your configurations.

To update from the repository:
```bash
cd ~/dotfiles
git pull
```

### Uninstallation

To remove the symlinks:

```bash
rm -rf ~/.config/nvim
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc
```