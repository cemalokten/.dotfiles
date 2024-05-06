vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use { 'junegunn/fzf.vim' }
	use { 'romainl/vim-cool' }
	use { 'airblade/vim-gitgutter' }

    use({
      "themercorp/themer.lua",
      config = function()
        require("themer").setup({
          colorscheme = "jellybeans",
          styles = {
          },
        })
      end
    })

   use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('tpope/vim-commentary')
	use('tpope/vim-surround')

    use {'jose-elias-alvarez/null-ls.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}}

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
		}
}
end)
