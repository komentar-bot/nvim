local neorg_callbacks = require("neorg.callbacks")

neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
    -- Map all the below keybinds only when the "norg" mode is active
    keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
            { "<C-s>", "core.integrations.telescope.find_linkable" },
            { "<leader>c", "core.qol.todo_items.todo.task_cycle" },
        },
        i = { -- Bind in insert mode
            { "<C-l>", "core.integrations.telescope.insert_link" },
        },
    }, {
        silent = true,
        noremap = true,
    })
end)

      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
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
          ["core.concealer"] = {}, -- Adds pretty icons to your documents. Create lag
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
        ["core.integrations.zen_mode"] = {},

          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                aca = "~/notes/aca",
                archiplus = "~/notes/archiplus",
              },
            index = "index.norg",
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
        ["core.export"] = {},
        ["core.export.markdown"] = {
          config = {
            extensions = "all",
          },
        },
        },
      }
