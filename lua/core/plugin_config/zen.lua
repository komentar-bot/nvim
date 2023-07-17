    require("zen-mode").setup {
        window = {
            width = 80,
            options = { 
                number = false,
                foldcolumn = "0",
                scrolloff = 999,
                cursorline = false,
                conceallevel = 3
            }
        },
        plugins = {
            gitsigns = { enabled = true },
            twilight = { enabled = true }
        }
    }
