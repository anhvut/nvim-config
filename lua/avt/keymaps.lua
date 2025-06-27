vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("n", "<leader>km", ":e ~/.config/nvim/lua/avt/keymaps.lua<CR>") -- open this file
keymap.set("n", "<leader>w", ":write<CR>") -- close current split window

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlight
keymap.set("n", "x", '"_x') -- delete char, yank in null register

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("n", "<leader>bb", ":buffers<CR>") -- list buffers
keymap.set("n", "<leader>bn", ":bn<CR>") -- buffer next
keymap.set("n", "<leader>bp", ":bp<CR>") -- buffer previous
keymap.set("n", "<leader>bd", ":bd<CR>") -- buffer delete
keymap.set("n", "<leader>bm", ":bm<CR>") -- buffer modified

-- reminder
-- Ctrl-w [number] + : increase height
-- Ctrl-w [number] - : decrease height
-- Ctrl-w [number] > : increase height
-- Ctrl-w [number] < : decrease width

-- reminder in insert node
-- i C-u undo
-- i C-w delete previous word
-- i C-h delete previous char
-- i C-r insert content of register

keymap.set("i", "<C-x>", "<C-o>x")
keymap.set("i", "<A-h>", "<C-o>h")
keymap.set("i", "<A-j>", "<C-o>j")
keymap.set("i", "<A-k>", "<C-o>k")
keymap.set("i", "<A-l>", "<C-o>l")
keymap.set("i", "<A-w>", "<C-o>w")
keymap.set("i", "<A-e>", "<C-o>e")
keymap.set("i", "<A-b>", "<C-o>b")
keymap.set("i", "<A-i>", "<C-o>^")
keymap.set("i", "<A-a>", "<C-o>$")

----------------------
-- Plugin Keybinds
----------------------

-- vim-tmux-navigator: CTRL+i/j/k/l to navigate between splits

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- surround
-- ysiw" => add double quote around inner word
-- ds"   => remove surrounding double quote
-- cs"'  => change surrounding double quote by simple quote

-- ReplaceWithRegister
-- griw  => replace inner word with register

-- Comment
-- gcc   => toggle comment line
-- gc9j  => toggle comment next 9 lines
-- (visual mode, select lines) gc => toggle comment selected lines

-- Tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- LSP
-- gd         => go to definition
-- gi         => go to implementation
-- gf         => find references
-- [d         => go to previous error
-- ]d         => go to next error
-- <leader>d  => display error
-- <leader>ca => code action = fix error
-- CTRL-O     => navigate backward
-- CTRL-I     => navigate forward
-- K          => hoover documentation
-- <leader>rn => rename symbol
-- <leader>rf => rename file
