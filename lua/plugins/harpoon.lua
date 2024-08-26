return {
	'ThePrimeagen/harpoon',
	branch = "harpoon2",
	lazy = false,

	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", },

	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})
		
		vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, 
		{ desc="Add to Harpoon List" })

		vim.keymap.set("n", "<leader>hc", function()
      harpoon:list():clear()
    end,
		{ desc="Clear Harpoon List" })

    vim.keymap.set("n", "<leader>hl", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,
		{ desc="Show Harpoon List" })

    vim.keymap.set("n", "<leader>h1", function()
      harpoon:list():select(1)
    end,
		{ desc="Go to Harpoon List Item 1" })
    
		vim.keymap.set("n", "<leader>hv1", function()
      harpoon:list():select(1, { vsplit = true })
    end,
		{ desc="Go to Harpoon List Item 1 Vsplit" })

    vim.keymap.set("n", "<leader>h2", function()
      harpoon:list():select(2)
    end,
		{ desc="Go to Harpoon List Item 2" })
    
		vim.keymap.set("n", "<leader>hv2", function()
      harpoon:list():select(2, { vsplit = true })
    end,
		{ desc="Go to Harpoon List Item 2 Vsplit" })

    vim.keymap.set("n", "<leader>h3", function()
      harpoon:list():select(3)
    end,
		{ desc="Go to Harpoon List Item 3" })

    vim.keymap.set("n", "<leader>hv3", function()
      harpoon:list():select(3, { vsplit = true })
    end,
		{ desc="Go to Harpoon List Item 3 Vsplit" })

    vim.keymap.set("n", "<leader>h4", function()
      harpoon:list():select(4)
    end,
		{ desc="Go to Harpoon List Item 4" })

    vim.keymap.set("n", "<leader>hv4", function()
      harpoon:list():select(4, { vsplit = true })
    end,
		{ desc="Go to Harpoon List Item 4 Vsplit" })

    vim.keymap.set("n", "<leader>h5", function()
      harpoon:list():select(5)
    end,
		{ desc="Go to Harpoon List Item 5" })

    vim.keymap.set("n", "<leader>hv5", function()
      harpoon:list():select(5, { vsplit = true })
    end,
		{ desc="Go to Harpoon List Item 5 Vsplit" })
		
	end

}
