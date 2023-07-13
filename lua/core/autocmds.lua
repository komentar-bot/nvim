-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- No folds found Treesitter 
-----------------------------
-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
    group = augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        opt.foldmethod     = 'expr'
        opt.foldexpr       = 'nvim_treesitter#foldexpr()'
        opt.foldlevelstart = 99
        opt.foldnestmax = 3
        opt.foldminlines = 1
        opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    end
})
---ENDWORKAROUND
--
