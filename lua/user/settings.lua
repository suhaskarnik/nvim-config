-- You can read the description of each option in the help page
-- use :help 'option_name' command
-- For example, :help 'hlsearch'

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true

-- Autocmd for InsertEnter to change line numbers
vim.api.nvim_create_autocmd({"InsertEnter"}, {
	pattern = "*",
  
  callback = function()
		vim.wo.number = true
		vim.wo.relativenumber = false
	end
})

-- Autocmd for InsertLeave to change line numbers
vim.api.nvim_create_autocmd({"InsertLeave"}, {
	pattern = "*",
  
  callback = function()
		vim.wo.number = true
		vim.wo.relativenumber = true
	end
})
