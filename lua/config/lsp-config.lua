vim.lsp.config('pylsp', {
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					maxLineLength = 88
				}
			},
			signature = {
				formatter = "ruff"
			}
		}
	}
})
