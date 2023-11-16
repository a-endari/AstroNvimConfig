# AstroNvimConfig by A.E

These are plugins and configs for AstroNvim distribution which I personally use. And you are welcome to try 😉

## To use the configs:

### Requirements

- Neovim : Instal from [NeoVim.io](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### AstroNvim

- Linux and Mac

  ```
   git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
   nvim
  ```

- Windows
  ```
  git clone --depth 1 https://github.com/AstroNvim/AstroNvim $env:LOCALAPPDATA\nvim
  nvim
  ```

### Install User Settings

Do this part inside of the Neovim:
Run `nvim`, then press `"Space"th` to open terminal, now depending on your operating system copy one of the code snippets below and paste it inside Neovim's terminal with `Ctrl + Shift + v` or `Cmd + Shift + v` and hit `Enter`, when done, enter `exit` to close the terminal, and then to install plugins without closing Neovim, press `"Space" pi` and let Lazy install them.

- Linux and Mac

  ```
  git clone https://github.com/a-endari/AstroNvimConfig.git ~/.config/nvim/lua/user
  ```

- Windows
  ```
  git clone https://github.com/a-endari/AstroNvimConfig.git $env:LOCALAPPDATA\nvim\lua\user
  ```
