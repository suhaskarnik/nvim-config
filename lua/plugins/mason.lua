local Plugin = {'williamboman/mason.nvim'}

Plugin.lazy = false

-- See :help mason-settings
Plugin.opts = {
  ui = {border = 'rounded'}
}

-- function Plugin.init()
--	require("mason").setup()
--	require("mason-lspconfig").setup()
-- end

return Plugin
