      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour

          ["core.concealer"] = {},
          ["core.highlights"] = {
            config = {
                highlights = {
                    links = {
                        file = "+@string",
                        location = {
                            url = "+@string",
                                },
                            },
                        },
                    },
                },
        ["core.integrations.telescope"] = {},
        ["core.integrations.treesitter"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                aca = "~/notes/aca",
                archi = "~/notes/archi",
              },
            default_workspace = "aca",
            },
          },
        ["core.summary"] = {},
        ["core.esupports.metagen"] = {
            config = {
tab = '  ',
template = {
            { 'title', function() return vim.fn.expand("%:t:r:S") end },
            { 'date', function() return os.date '"%Y-%m-%d"' end },
            { 'tags', '' },
            { 'categories', '' },
          },
          },

                    },
        ["core.completion"] ={
            config = {
            engine = "nvim-cmp",
                        },
                    },
        ["core.integrations.nvim-cmp"] = {},
["core.keybinds"] = {
    config = {
        hook = function(keybinds)
keybinds.remap_event("norg", "n", "<C-s>", "core.integrations.telescope.find_linkable")
keybinds.remap_event("norg", "n", "<leader>c", "core.qol.todo_items.todo.task_cycle")
keybinds.remap_event("norg", "i", "<C-l>", "core.integrations.telescope.insert_link")
end,
}
}
        },
      }
