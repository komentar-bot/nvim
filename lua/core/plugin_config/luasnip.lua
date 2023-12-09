if not pcall(require, "luasnip") then
  return
end

local ls = require "luasnip"
local snippets_folder = vim.fn.stdpath "config" .. "/snippets/"

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_lua").load { paths = snippets_folder }

vim.cmd [[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]

-- Config
ls.config.set_config {
  history = true, --keep around last snippet local to jump back
  updateevents = "TextChanged,TextChangedI", --update changes as you type
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
} --}}}-
