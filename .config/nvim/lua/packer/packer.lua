return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'eddyekofo94/gruvbox-flat.nvim'
    use 'sainnhe/gruvbox-material'
    use 'nvim-lualine/lualine.nvim'
    use 'airblade/vim-gitgutter'
    -- snipets
    use 'onecentlin/laravel-blade-snippets-vscode'
    use 'onecentlin/laravel5-snippets-vscode'
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    -- lsp

    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'scrooloose/nerdcommenter'
    use 'tsony-tsonev/nerdtree-git-plugin'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'

    use 'junegunn/fzf.vim'
    use 'junegunn/fzf'

    -- autocomplete
     use { 'neoclide/coc.nvim', branch = 'master' }

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- IDE tools
    use 'editorconfig/editorconfig-vim'
    use 'christoomey/vim-tmux-navigator'
    --use 'Yggdroot/indentLine'
    use "lukas-reineke/indent-blankline.nvim"
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'mg979/vim-visual-multi'

    -- syntax & format
    use 'prettier/vim-prettier'
    use 'MunifTanjim/prettier.nvim'

    use 'sbdchd/neoformat'
    use 'mattn/emmet-vim'
    use 'nelsyeung/twig.vim'
    use 'nikvdp/ejs-syntax'
    --use 'raimon49/requirements.txt.vim'
    use 'posva/vim-vue'
    -- use 'yaegassy/coc-volar'
    use 'rrethy/vim-hexokinase'
    use 'github/copilot.vim'
    use 'xiyaowong/nvim-transparent'

    use 'rcarriga/nvim-notify'
    use 'romgrk/barbar.nvim'
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
