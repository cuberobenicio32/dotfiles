## My Windows Subsystem for Linux 2 Workflow.
![Start page](./img/start-page.png "Startify")

<p align="center"> Startify </p>

![Coding](./img/coding.png "Some code")

<p align="center"> Some code </p>

### Installing
This repository contains all the information for setting up Neovim and ZSH with my config. I will add more things in the future.

### WSL

If you don't have WSL already installed, you can follow this official Microsoft's guide. [WSL installation guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

### Neovim
First off, you have to install neovim.

#### Ubuntu/Debian
```bash
sudo apt-get install neovim
```
#### Arch
```bash
sudo pacman -S neovim
```
#### Fedora
```bash
sudo dnf install -y neovim 
```

For more information about downloading neovim on your operating system, visit [the neovim installation guide](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### Vim-Plug

After downloading neovim, we will have to install vim-plug, the vim plugin manager that my configuration uses.

