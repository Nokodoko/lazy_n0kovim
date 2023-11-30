-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- WRITE && QUIT (different modes of quit)
keymap("n", "<F3>", "<cmd>w!<cr>", opts)
keymap("n", "Q", "<cmd>q!<cr>", opts)
keymap("n", "<BS>", "<cmd>bd<cr>", opts)

-- BETTER WINDOW NAVIGATION
keymap("n", "<C-j>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>l", opts)
keymap("n", "<leader>o", ":set ma<cr>", opts)
keymap("n", "<leader><C-Space>", ":vsplit term://zsh<cr>:set number!<cr>:set relativenumber!<cr>a", opts)
keymap("n", "<leader><Right>", ":vsplit term://zsh<cr>:set number!<cr>:set relativenumber!<cr>a", opts)
keymap("n", "<leader>z", ":split term://tty-clock -c<cr>:set number!<cr>:set relativenumber!<cr>:", opts)
keymap("n", "<esc>", "A", opts)
keymap("n", "'", "cw", opts)
keymap("n", "<C-'>", "dw<esc><esc>", opts)
keymap("n", "<c-f>", ":RnvimrToggle<cr>", opts)
keymap("n", "<leader><leader>w", ":VimwikiIndex<cr>", opts)
keymap("n", "<leader><leader>x", ":! chmod +x ./%<cr>", opts)
keymap("n", "<leader><leader>s", ":w <cr> :source %<cr>", opts)

keymap("n", "<F9>", ":set hlsearch!<cr>", opts)

-- NAVIGATE BUFFERS
keymap("n", "<S-h>", ":bnext<CR>", opts)
keymap("n", "<S-l>", ":bprevious<CR>", opts)
keymap("n", "<F6>", "l", opts)
keymap("n", "<F5>", "k", opts)
keymap("n", "<F10>", "h", opts)
keymap("n", "<F4>", "j", opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("x", "J", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "K", "<cmd>move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", "<cmd>move '<-2<CR>gv-gv", opts)
keymap("x", "<Up>", "g<C-a>", opts)

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

--Chatgpt
--keymap("n", "<leader>c", ":ChatGPTRunCustomCodeAction<cr>", opts)
keymap("v", "<C-e>", "<cmd>ChatGPTRun explain_code<cr>", opts)
keymap("v", "<C-f>", "<cmd>ChatGPTRun fix_bugs<cr>", opts)
keymap("v", "<C-t>", "<cmd>ChatGPTRun add_tests<cr>", opts)

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
