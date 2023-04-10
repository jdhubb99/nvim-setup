vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- save and quit
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- opens netrw
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- jk to exit insert mode
keymap.set("i", "jk", "<C-c>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character w/o copying to register
keymap.set("n", "x", '"_x')

-- increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tb", ":tabp<CR>") --  go to previous tab

-- move lines up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor centered on half page up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- buffer line
keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<leader>bb", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>bf", "<cmd>BufferLinePick<CR>")
keymap.set("n", "<leader>bx", "<cmd>BufferLinePickClose<CR>")
keymap.set("n", "<leader>bxr", "<cmd>BufferLineCloseRight<CR>")
keymap.set("n", "<leader>bxl", "<cmd>BufferLineCloseLeft<CR>")

-- undo tree
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
