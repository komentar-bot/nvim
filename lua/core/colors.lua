local create_cmd = vim.api.nvim_create_user_command

create_cmd("ToggleBackground", function()
  if vim.o.background == "dark" then
    vim.cmd "set bg=light"
  else
    vim.cmd "set bg=dark"
  end
end, {})

require("gruvbox").setup {
  palette_overrides = {
    dark0 = "#232326",
    light0 = "#fbf1c7",
    light5 = "#F8F8F2",
    dark10 = "#282a2e",
    light7 = "#5c6370",
    light4 = "#5c6370",
    bright_blue = "#c0caf5",
  },
}

vim.cmd [[colorscheme gruvbox]]
