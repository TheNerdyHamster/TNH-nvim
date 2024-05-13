return {
	"vimwiki/vimwiki",
  event = "VeryLazy",
	init = function()
		-- Default directory, syntax and file type,
		-- symbols for spaces, auto re-index tags db
		vim.g.vimwiki_list = {
			{
				path = "~/Documents/work/wiki",
				syntax = "markdown",
				ext = ".md",
				links_space_char = "_",
				auto_tags = 1,
			},
			{
				path = "~/Documents/personal/wiki",
				syntax = "markdown",
				ext = ".md",
				links_space_char = "_",
				auto_tags = 1,
			},
		}

		-- Disable header levels keybindings so oil.nvim will work
		vim.g.vimwiki_key_mappings = {
			headers = 0,
		}

		-- Syntax highlighting for code blocks
		vim.g.vimwiki_syntax_plugins = {
			codeblock = {
				["```lua"] = { parser = "lua" },
				["```python"] = { parser = "python" },
				["```php"] = { parser = "php" },
				["```bash"] = { parser = "bash" },
				["```html"] = { parser = "html" },
				["```css"] = { parser = "css" },
				["```go"] = { parser = "go" },
			},
		}
	end,
}
