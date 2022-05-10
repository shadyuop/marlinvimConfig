local map = vim.keymap.set

-- * Hop keymappings
map("n", "f", ":HopWord<cr>", { desc = "Hopping by Word" })
map("n", "F", ":HopLine<cr>", { desc = "Hopping by Line" })

map("v", "f", require("hop").hint_words, { desc = "Hopping Word vmode" })
-- hop in motion
local actions = { "d", "c", "<", ">", "y" }
for _, a in ipairs(actions) do
  vim.keymap.set("n", a .. "f", a .. "<cmd>lua require'hop'.hint_char1()<cr>")
end


map("", "<F8>", ":TagbarToggle<CR>", { desc = "Toggle Tagbar" })
-- vim.cmd('nmap <F8> :TagbarToggle<CR>')



-- S for search and replace in buffer
vim.cmd("nnoremap S :%s/")
-- vim.cmd("set g:tagbar_ctags_bin = 'C:\\Program Files\\ctags58\\ctags.exe'")
