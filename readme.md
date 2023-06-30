# Config Installation
1. Path Neovim `:echo stdpath('config')` in Neovim. It is usually`$env:LOCALAPPDATA`.
2. Clone your nvim config to `git clone git@github.com:777uliahshafar/nvim.git "$env:LOCALAPPDATA\nvim"`
3. cd to nvim configration folder `nc`.

# Nvim Installation
1. Packer `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`. Before installation, disconnect all config related to plugin  `comment every line but plugin.lua in init.lua`
4. Ripgrep `scoop install ripgrep`, required for nvim-tree.
5. fd `scoop install fd` required for nvim-tree.
6. zig `scoop install zig` required for nvim-treesitter. `:TSInstallInfo` available language, `:TSUpdate` update parsers unconditionally.


PS. Check your nvim config `:checkhealth`
