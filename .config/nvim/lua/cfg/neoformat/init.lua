-- autoformat
if O.format_on_save then
	require("cfg.utils").define_augroups({
		autoformat = {
			{
				"BufWritePre",
				"*",
				[[try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry]],
			},
		},
	})
end

vim.g.neoformat_run_all_formatters = 0

vim.g.neoformat_enabled_python = { "flake8", "black", "docformatter" }
vim.g.neoformat_enabled_javascript = { "prettier" }

if not O.format_on_save then
	vim.cmd([[if exists('#autoformat#BufWritePre')
	:autocmd! autoformat
	endif]])
end
