require("neorg").setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour

    ["core.concealer"] = {
      config = {
        icons = {
          todo = {
            undone = { icon = "." },
            done = { icon = "o" },
            pending = { icon = "X" },
            on_hold = { icon = " " },
          },
        },
      },
    },
    ["core.qol.todo_items"] = {
      config = {},
    },
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          main = "~/notes/main",
        },
        default_workspace = "main",
      },
    },
    ["core.highlights"] = {
      config = {
        highlights = {
          anchors = {
            declaration = "+Underlined",
          },
          headings = {
            ["1"] = {
              prefix = "+@type.definition",
              title = "+@type.definition",
            },
            ["2"] = {
              prefix = "+@attribute",
              title = "+@attribute",
            },
          },
          links = {
            file = "+@string",
            location = {
              url = "+@string",
            },
          },
          todo_items = {
            pending = "+@punctuation.delimiter",
            undone = "+@punctuation.delimiter",
            done = "+@punctuation.delimiter",
            on_hold = "+@punctuation.delimiter",
          },
        },
      },
    },
    ["core.integrations.telescope"] = {},
    ["core.integrations.treesitter"] = {},
    ["core.summary"] = {},
    ["core.esupports.metagen"] = {
      config = {
        tab = "  ",
        template = {
          {
            "title",
            function()
              return vim.fn.expand "%:t:r:S"
            end,
          },
          {
            "date",
            function()
              return os.date '"%Y-%m-%d"'
            end,
          },
          { "tags", "" },
          { "categories", "" },
        },
      },
    },
    ["core.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
    ["core.integrations.nvim-cmp"] = {},
    ["core.presenter"] = {
      config = {
        zen_mode = "zen-mode",
      },
    },

    ["core.keybinds"] = {
      config = {
        hook = function(keybinds)
          keybinds.remap_event("norg", "n", "<leader>s", "core.integrations.telescope.find_linkable")
          keybinds.remap_event("norg", "i", "<c-s>", "core.integrations.telescope.insert_link")
          keybinds.remap_event("norg", "n", "<leader>cc", "core.qol.todo_items.todo.task_cycle")
          keybinds.remap_event("norg", "n", "<leader>c", "core.qol.todo_items.todo.task_on_hold")
          keybinds.map("norg", "n", "<leader>q", "<cmd>Neorg toc qflist<CR>")
          keybinds.map("norg", "n", "<leader>v", "<cmd>Neorg presenter start<CR>")
        end,
      },
    },
  },
}
