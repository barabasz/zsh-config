# zsh-config: Installation Instructions

This is a part of [zsh-config](../README.md) documentation. 
Instructions for installing and setting up the zsh configuration. 

## Requirements

- Zsh version 5.8 or higher
- Git installed on your system

## Installation

1. **Clone** the repository:

   ```zsh
   git clone https://github.com/barabasz/zsh-config.git ~/.config/zsh
   ```

2. **Link** the main configuration file:

   ```zsh
   ln -s ~/.config/zsh/.zshenv ~/.zshenv
   ```

3. **Set** zsh as your default shell:

   ```zsh
   chsh -s $(which zsh)
   ```

4. **Restart** your terminal to apply changes.

   ```zsh
   exec zsh
   ```

   This may take a llittle while for the first time, since zsh-config will automatically download and install all the required plugins and compile some zsh files info zwc for faster loading.

5. **Use help** to get started:

   ```zsh
   help
   ```

Enjoy better shell experience with zsh-config! 🎉