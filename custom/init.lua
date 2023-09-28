local function nmap(comb, cmd, desc)
	vim.api.nvim_set_keymap('n', comb, cmd, {noremap = true, silent = true, desc = desc})
end

vim.opt.colorcolumn = "100"
vim.opt.scrolloff = 12
vim.wo.relativenumber = true


nmap("<C-w>", ":bd <CR>", "close buffer")
nmap("<C-u>", "<C-u>zz", "centers page scroll up");
nmap("<C-d>", "<C-d>zz", "centers page scroll down");
nmap('<C-o>', ':lua require"telescope.builtin".git_files{use_git_root=false} <CR>', "Search git files")
nmap('<leader>fp', ':lua require"telescope.builtin".commands() <CR>', "Search commands")
nmap('<leader>fl', ':lua require"telescope.builtin".treesitter() <CR>', "List LSP symbols in buffer")
nmap('<leader>fe', ':lua require"telescope.builtin".oldfiles() <CR>', "List previously opened files")
nmap('<leader><F7>', ':lua require"telescope.builtin".lsp_references() <CR>', "Find references")
