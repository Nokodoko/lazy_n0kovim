-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
-- local noice = require("noice")
-- local harpoon_ui = require("harpoon.ui")
-- local function harpoon_add()
--   harpoon_ui.nav_file()
--   noice.notify("file added", "info", { timeout = 3000 })
-- end

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- WRITE && QUIT (different modes of quit)
keymap("n", "<F3>", "<cmd>w!<cr>", opts)
keymap("i", "<F3>", "<cmd>w!<cr>", opts)
keymap("n", "Q", "<cmd>q!<cr>", opts)
keymap("n", "<BS>", "<cmd>bd<cr>", opts)

-- BETTER WINDOW NAVIGATION
keymap("n", "<C-j>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>l", opts)
keymap("n", "<leader>o", ":set ma<cr>", opts)
--keymap("n", "<leader><C-Space>", ":vsplit term://zsh<cr>:set number!<cr>:set relativenumber!<cr>a", opts)
--keymap("n", "<leader><Right>", ":vsplit term://zsh<cr>:set number!<cr>:set relativenumber!<cr>a", opts)
--keymap("n", "<leader>z", ":split term://tty-clock -c<cr>:set number!<cr>:set relativenumber!<cr>:", opts)
keymap("n", "<esc>", "A", opts)
keymap("n", "'", "cw", opts)
keymap("n", "<C-'>", "dw<esc><esc>", opts)
keymap("n", "<c-f>", ":RnvimrToggle<cr>", opts)
keymap("n", "<leader>w", ":VimwikiIndex<cr>", opts)
keymap("n", "<leader>x", ":! chmod +x ./%<cr>", opts)
keymap("n", "<leader>s", ":w <cr> :source %<cr>", opts)

keymap("n", "<F9>", ":set hlsearch!<cr>", opts)

-- NAVIGATE BUFFERS
keymap("n", "<S-h>", ":bnext<CR>", opts)
keymap("n", "<S-l>", ":bprevious<CR>", opts)
keymap("n", "<F6>", "l", opts)
keymap("n", "<F5>", "k", opts)
keymap("n", "<F10>", "h", opts)
keymap("n", "<F4>", "j", opts)

--HARPOON
--ADD MARK
keymap("n", "<leader>1", ':lua require("harpoon.mark").add_file()<cr>', opts)
-- keymap("n", "<leader>1", ':lua require("harpoon.mark").add_file(1)', opts)
-- keymap("n", "<leader>2", ':lua require("harpoon.mark").add_file(2)<cr>', opts)
-- keymap("n", "<leader>3", ':lua require("harpoon.mark").add_file(3)<cr>', opts)
-- keymap("n", "<leader>4", ':lua require("harpoon.mark").add_file(4)<cr>', opts)

--FILE NAVIGATION
-- keymap("n", "<leader>j", ':lua require("harpoon.ui").nav_file(1)<cr>', opts)
-- keymap("n", "<leader>j", tostring(harpoon_add()), opts)
keymap("n", "<leader>k", ':lua require("harpoon.ui").nav_file(2)<cr>', opts)
keymap("n", "<leader>;", ':lua require("harpoon.ui").nav_file(3)<cr>', opts)
keymap("n", "<leader>;", ':lua require("harpoon.ui").nav_file(4)<cr>', opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("v", "J", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("v", "K", "<cmd>move '<-1<CR>gv-gv", opts)
keymap("v", "<A-k>", "<cmd>move '<-1<CR>gv-gv", opts)
keymap("v", "<Up>", "g<C-a>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", "<cmd>resize -2<CR>", opts)
keymap("n", "<C-Down>", "<cmd>resize +2<CR>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

--TELESCOPE FUNCTIONS
keymap("n", "<leader>?", "<cmd>Telescope help_tags theme=ivy<cr>", opts)
keymap("n", "<Up>", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
keymap("n", "<leader>gr", "<cmd>Telescope lsp_references theme=ivy<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader>th", "<cmd>Telescope harpoon marks<cr>", opts)

--Chatgpt
--keymap("n", "<leader>c", ":ChatGPTRunCustomCodeAction<cr>", opts)
keymap("n", "<C-e>", "<cmd>ChatGPT<cr>", opts)
keymap("v", "<C-e>", "<cmd>ChatGPTRun explain_code<cr>", opts)
keymap("v", "<C-f>", "<cmd>ChatGPTRun fix_bugs<cr>", opts)
keymap("v", "<C-t>", "<cmd>ChatGPTRun add_tests<cr>", opts)

-- checkhealth
keymap("n", "+", "<cmd>checkhealth<cr>", { desc = "check health" })
--[[
TODO:
1. Fix comletion selection keybinds (either in nvim-cmp/config/mapping or somewhere with pmenu )
2. Find files ['f' and 'F'] (same concepts as lazy but with the ivy theme)
3. Vim-surround settings are off (adjust so you can 'S' in v mode) 
4. noice settings 
5. get rid of banner that shows keymaps every time you press leader (still undecided about this -- or increase the timer before it triggers)
6. set up keybinds for lsp
7. Persistent folds setup
--]]
