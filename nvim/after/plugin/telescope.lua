local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-g>' , builtin.git_files, {})
vim.keymap.set('n', '<leader>sw', function()
	builtin.grep_string({ search = vim.fn.input("Search for > ")})
end)
