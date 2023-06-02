vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
-- get info on item on cursor
vim.keymap.set('n', "K", vim.lsp.buf.hover)
-- find where the item on cursor is referenced
vim.keymap.set('n', "<leader>r", vim.lsp.buf.references)
-- format python files
vim.keymap.set('n', "<leader>fp", "<cmd>!black -v %<CR>", {})
-- format c files
vim.keymap.set('n', "<leader>fc", "<cmd>!clang-format -i %<CR>", {})
-- format go files
vim.keymap.set('n', "<leader>fg", "<cmd>!gofumpt -w ./.. <CR>", {silent = true})
-- format js files
vim.keymap.set('n', "<leader>fj", "<cmd>!semistandard --fix<CR>", {silent = true})
-- Prettier mostly for TS files
vim.keymap.set('n', "<leader>pt", "<cmd>!prettier -w %<CR>", {})
vim.keymap.set('n', "<leader>gp", "<cmd>!git push<CR>")

--Vertical split
vim.keymap.set("n", "<leader>s", "<cmd>vs<CR>", {})
--move highlighted blocks
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
