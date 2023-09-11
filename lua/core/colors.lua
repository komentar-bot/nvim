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
    light5 = "#F8F8F2",
    dark10 = "#2c2d31",
  },
}

vim.cmd [[colorscheme gruvbox]]
