local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
    "svelte",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",
		"go",
		"python",
		"json",
		"yaml",
		"toml",
		"templ",
		"xml",
		"http",
		"graphql",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"tailwindcss-language-server",
		"deno",
		"prettier",
		"eslint-lsp",
		"js-debug-adapter",
		"json-lsp",
		"yaml-language-server",
		"jq-lsp",
		"sqlls",
		"svelte-language-server",
		"bash-language-server",
		"emmet-ls",
		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- GO
		"gopls",
		"templ",

		-- DOCKER
		"docker-compose-language-service",
		"dockerfile-language-server",

		-- PYTHON
		"pyright",
		"black",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.copilot = {
	suggestion = {
		enable = true,
	},
	panel = {
		enable = true,
	},
}

return M
