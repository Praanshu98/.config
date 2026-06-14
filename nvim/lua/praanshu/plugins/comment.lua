return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local comment = require("Comment")

		-- ✅ REQUIRED FIX (you were missing this)
		require("ts_context_commentstring").setup({
			enable_autocmd = false,
		})

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		comment.setup({
			pre_hook = ts_context_commentstring.create_pre_hook(),

			padding = true,
			sticky = true,

			toggler = {
				line = "gcc",
				block = "gbc",
			},

			opleader = {
				line = "gc",
				block = "gb",
			},

			extra = {
				above = "gcO",
				below = "gco",
				eol = "gcA",
			},

			mappings = {
				basic = true,
				extra = true,
			},
		})
	end,
}
