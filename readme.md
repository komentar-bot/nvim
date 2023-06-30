# Config Installation
1. Path Neovim `:echo stdpath('config')` in Neovim. It is usually`$env:LOCALAPPDATA`.
2. Clone your nvim config to `git clone git@github.com:777uliahshafar/nvim.git "$env:LOCALAPPDATA\nvim"`
3. cd to nvim configration folder `nc`.

# Nvim Installation
1. Packer `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`. Disconnect config related to plugin before installation `comment every line but plugin.lua in init.lua`
4. Ripgrep `scoop install ripgrep`, required for nvim-tree.
5. fd `scoop install fd` required for nvim-tree.
6. zig `scoop install zig` required for nvim-treesitter. 


PS. Check your nvim config `:checkhealth`
