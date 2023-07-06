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
            light0_hard = "#fbf1c7",
            light1 = "#f8f8f2",
            light2= "#f8f8f2",
            dark1= "#3c3836",
            dark2= "#1B1D1E",
            dark4 = "#a89984",
        },
        overrides = {
            CursorLine = {bg = "NONE"},
            CursorLineNr = {bg = "NONE", fg= "#d65d0e"},
        }
      })

vim.cmd[[colorscheme gruvbox]]
