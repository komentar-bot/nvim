if not pcall(require, "luasnip") then
  return
end

local ls = require "luasnip"

require("luasnip.loaders.from_lua").load { paths = "~/Appdata/Local/nvim/snippets/" }
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip").config.setup { store_selection_keys = "<A-p>" }

vim.cmd [[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]] --}}}

-- Config
ls.config.set_config {
  history = true, --keep around last snippet local to jump back
  updateevents = "TextChanged,TextChangedI", --update changes as you type
  enable_autosnippets = true,
} --}}}-
