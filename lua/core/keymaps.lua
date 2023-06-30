local opts = { noremap = true, silent = true }

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- Load recent sessions
map("n", "<leader>sl", "<CMD>SessionLoad<CR>")

-- Keybindings for telescope
map("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")
map("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")

-- maps for go down and up 
map("n", "j", "gj")
map("n", "k", "gk")

-- maps for  spellcheck
map("n", "<leader>o" , ":setlocal spell! spelllang=id<CR>")

map("n", "<F7>" , ":setlocal spell! spelllang=en_us<CR>")

-- maps split navigation
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- map buffer
map("n", "<c-b>", ":ls<CR>:b<Space>", opts )
map("n", "<leader>h", ":bprevious<CR>", opts )
map("n", "<leader>l", ":bnext<CR>", opts )

-- nvim-tree
map("n", "<leader>e", require("nvim-tree.api").tree.toggle)

