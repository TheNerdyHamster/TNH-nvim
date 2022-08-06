local home = os.getenv("HOME")
local db = require("dashboard")

db.custom_header = {
	"",
	" .-------------------------. ",
	" | Made by TheNerdyHamster | ",
	" '-------------------------' ",
	"",
	"",
}

db.custom_center = {
	{
		icon = "  ",
		desc = "Recently latest session                  ",
		shortcut = "SPC s l",
		action = "SessionLoad",
	},
	{
		icon = "  ",
		desc = "Recently opened files                   ",
		action = "DashboardFindHistory",
		shortcut = "SPC f h",
	},
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SPC f f",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "SPC f b",
	},
	{
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "SPC f w",
	},
	{
		icon = "  ",
		desc = "Open Personal dotfiles                  ",
		action = "Telescope dotfiles path=" .. home .. "/.dotfiles",
		shortcut = "SPC f d",
	},
}

db.custom_footer = {}
-- db.hide_tabline = true
-- db.hide_statusline = true

-- let g:dashboard_default_executive ='telescope'
-- let g:dashboard_custom_footer = ['']

-- " Find files using Telescope command-line sugar.
-- nnoremap <silent> <leader>ff :DashboardFindFile<CR>
-- nnoremap <silent> <leader>fg :Telescope live_grep<cr>
-- nnoremap <silent> <leader>fb :Telescope buffers<cr>
-- nnoremap <silent> <leader>ft :Telescope help_tags<cr>
-- nnoremap <silent> <leader>fh :DashboardFindHistory<CR>
-- nnoremap <silent> <leader>fc :DashboardChangeColorscheme<CR>
-- nnoremap <silent> <leader>fw :DashboardFindWord<CR>
-- nnoremap <silent> <leader>fm :DashboardJumpMark<CR>
-- nnoremap <silent> <leader>fn :DashboardNewFile<CR>

-- nmap <leader>fss :<C-u>SessionSave<CR>
-- nmap <leader>fsl :<C-u>SessionLoad<CR>

-- let g:dashboard_custom_shortcut={
--       \ 'last_session'       : 'SPC fs l',
--       \ 'find_history'       : 'SPC f h',
--       \ 'find_file'          : 'SPC f f',
--       \ 'new_file'           : 'SPC f n',
--       \ 'change_colorscheme' : 'SPC f c',
--       \ 'find_word'          : 'SPC f w',
--       \ 'book_marks'         : 'SPC f m',
--       \ }
