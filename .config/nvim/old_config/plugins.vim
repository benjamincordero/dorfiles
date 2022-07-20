call plug#begin('~/.vim/plugged')

"theme
Plug 'morhetz/gruvbox' 
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim' 
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

"Plug 'sheerun/vim-polyglot'

"files
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
 
"IDE tools
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"syntax & format
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat' " prettier extension
Plug 'mattn/emmet-vim'
Plug 'nelsyeung/twig.vim'
Plug 'nikvdp/ejs-syntax'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'posva/vim-vue'
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'github/copilot.vim'

call plug#end()
