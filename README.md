# 🛠 Dotfiles

Configurações para meu ambiente de desenvolvimento. Este repositório contém os arquivos de ferramentas que utilizo para programação via terminal.

### Utilitários

- [NeoVim](https://neovim.io): Editor de texto modal altamente configurável
- [Oh My Zsh](http://ohmyz.sh): Framework para gerenciar configuração do Zsh
- [Tmux](https://github.com/tmux/tmux/wiki): Multiplexador de terminal
- [Nerd Fonts](https://www.nerdfonts.com): são um conjunto de fontes para desenvolvedores
- [LazyGit](https://github.com/jesseduffield/lazygit): Interface TUI para Git

### Emuladores de terminal

- [Windows terminal](https://github.com/microsoft/terminal) (_Windows_)
- [Alacritty](https://github.com/alacritty/alacritty) (_Windows, Linux & MacOS_)
- [Wezterm](https://github.com/wezterm/wezterm) (_Windows, Linux & MacOS_)
- [iTerm2](https://github.com/gnachman/iTerm2) (_MacOS_)

### CLI's uteis

- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder para busca rápida
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep) - Busca ultrarrápida em arquivos
- [eza](https://github.com/eza-community/eza) - Substituto moderno do `ls`
- [bat](https://github.com/sharkdp/bat) - Substituto do `cat` com syntax highlighting

### Aliases Principais

```bash
alias vim=nvim
alias cl=clear
alias ..='cd ..'

alias lg=lazygit
alias g=git

alias cd=z
alias grep=rg
alias cat=bat

alias l='eza -la --icons --git --color --no-filesize --no-permissions'
alias ll='eza -a --color --icons --no-filesize --no-permissions'
alias tree='eza --tree -a --level=3 --icons --git --ignore-glob "node_modules"'
```
