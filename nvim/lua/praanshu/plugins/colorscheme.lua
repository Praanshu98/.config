return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#16161e"
			local bg_search = "#5D627C"
			local fg_comment = "#6272a4"

			require("tokyonight").setup({
				style = "night",
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg
					colors.bg_float = bg
					colors.bg_popup = bg
					colors.bg_search = bg_search
					colors.bg_visual = bg_search
					colors.bg_sidebar = bg
					colors.bg_statusline = bg

					colors.comment = fg_comment

					colors.error = "#FF6C6B"
					colors.warning = "#ECBE7B"
					colors.info = "#98BE65"
					colors.hint = "#51AFEF"
				end,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
