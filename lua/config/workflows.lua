-- navigate to vault
vim.keymap.set("n", "<leader>oo", ":cd /home/wrp/Documentos/thobrain<cr>")
-- convert note to template and remove leading white space
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")
-- search for files in full vault
vim.keymap.set("n", "<leader>os", ':Telescope find_files search_dirs={"/home/wrp/Documentos/thobrain"}<cr>')
vim.keymap.set("n", "<leader>oz", ':Telescope live_grep search_dirs={"/home/wrp/Documentos/thobrain"}<cr>')
-- move file in current buffer to zettelkasten folder
vim.keymap.set(
  "n",
  "<leader>ok",
  ":!mv '%:p' /home/wrp/Documentos/thobrain/Segundo_Cérebro/PARA/00_Caixa_de_Entrada<cr>:bd<cr>"
)
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")
