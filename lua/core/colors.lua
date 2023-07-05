local o = vim.o

vim.cmd[[colorscheme gruvbox]]

local create_cmd = vim.api.nvim_create_user_command

create_cmd("ToggleBackground", function ()
    if vim.o.background == 'dark' then
        vim.cmd'set bg=light'
    else
        vim.cmd'set bg=dark'
    end
end, {})
