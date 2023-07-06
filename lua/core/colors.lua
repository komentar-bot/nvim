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
            dark1= "#3c3836",
            dark4 = "#a89984",
        },
        overrides = {
            SignColumn = {bg = "#a89984"},
            CursorLine = {bg = "NONE"},
            CursorLineNr = {bg = "NONE"},

        }
      })

vim.cmd[[colorscheme gruvbox]]
