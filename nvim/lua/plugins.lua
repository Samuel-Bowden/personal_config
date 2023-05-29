return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'elkowar/yuck.vim'

	-- Nightfox colour scheme
	use {
		'EdenEast/nightfox.nvim',
		config = function()
			require('nightfox').setup({
				options = {
					transparent = false,
				}
			})
			vim.cmd("colorscheme carbonfox")
		end
	}

	-- LSP support
	use { 'neoclide/coc.nvim', branch = 'release' }

	-- Neo-tree to manage filesystem
	use {
		'nvim-neo-tree/neo-tree.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require('neo-tree').setup({
				close_if_last_window = true,
				filesystem = {
					filtered_items = {
						hide_gitignored = true,
						hide_dotfiles = true,
					}
				}
			})

			vim.keymap.set('n', '<A-t>', '<CMD>Neotree toggle<CR>')
		end
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'sukima/xmledit'
	}
end)
