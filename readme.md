# Config Installation
1. Path Neovim `:echo stdpath('config')` in Neovim. It is usually`$env:LOCALAPPDATA`.
2. Clone your nvim config to `git clone git@github.com:777uliahshafar/nvim.git "$env:LOCALAPPDATA\nvim"`
3. cd to nvim configration folder `nc`.

# Nvim Installation
1. Packer `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`. Before installation, disconnect all config related to plugin  `comment every line but plugin.lua in init.lua`
4. Ripgrep `scoop install ripgrep`, required for nvim-tree.
5. fd `scoop install fd` required for nvim-tree.
6. zig `scoop install zig` required for nvim-treesitter. `:TSInstallInfo` available language, `:TSUpdate` update parsers unconditionally.
7. Strawberry Perl [link](https://strawberryperl.com/) latex on nvim.
8. Miktek, latex distribution [link](https://miktex.org/download). Net Installer for full package installation. Check update on miktex console after installation, latex on nvim.
9. SumatraPDF, enable all the options on options menu, latex on nvim.
10. Add parent directories of the executable to your `PATH environment variable` see [link](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows), find `edit the system environment variables` > on Advanced System properties tab click environment variables > click path then click edit > then add this `C:\Users\ul\AppData\Local\SumatraPDF\`.
11. nvim-neorg, create folder for neorg workspace manually if it doesn't provide automatically.

PS. Check your nvim config `:checkhealth`



