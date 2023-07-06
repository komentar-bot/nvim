local o = vim.o

local create_cmd = vim.api.nvim_create_user_command

create_cmd("ToggleBackground", function ()
    if vim.o.background == 'dark' then
        vim.cmd'set bg=light'
    else
        vim.cmd'set bg=dark'
    end
end, {})

      require("gruvbox").setup({
        contrast = "hard",
        palette_overrides = {
            light0_hard = "#ebdbb2",
            light1 = "#f8f8f2",
            light2= "#f8f8f2", 
            dark1= "#3c3836", 
            dark2= "#3c3836", 
            dark4 = "#a89984",
        },
        overrides = {
            CursorLine = {bg = "NONE"},
            CursorLineNr = {bg = "NONE", fg= "#d65d0e"},
        }
      })

vim.cmd[[colorscheme gruvbox]]
