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







-- S for search and replace in buffer
vim.cmd("nnoremap S :%s/")
