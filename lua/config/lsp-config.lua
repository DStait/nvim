vim.lsp.config('pylsp', {
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					maxLineLength = 120
				}
			}
		}
	}
})
