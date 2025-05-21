return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	--opts = {},
	opts = {
		indent = { char = "|" },
		whitespace = { highlight = { "Function", "NonText" } },
		scope = { exclude = { language = { "lua" } } },
	}
}
