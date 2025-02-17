local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Modo normal com [jk] e [JK]
keymap.set("i", "jk", "<esc>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Keybindings to toggle spell checking
keymap.set("n", "<leader>rs", ":set spell!<CR>", opts)
keymap.set("n", "<leader>re", ":set spelllang=en_us<CR", opts)
keymap.set("n", "<leader>rp", ":set spelllang=pt_br<CR>", opts)
keymap.set("n", "<leader>rb", ":set spelllang=en_us,pt_br<CR>", opts)

-- Markdown preview
keymap.set("n", "<Leader>p", ":MarkdownPreview<Return>", opts)
keymap.set("n", "<Leader>o", ":MarkdownPreviewStop<Return>", opts)
keymap.set("n", "<Leader>mpt", ":MarkdownPreviewToggle<Return>", opts)

-- Obsidian
keymap.set("n", "gf", function()
  return require("obsidian").util.gf_passthrough()
end, opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
