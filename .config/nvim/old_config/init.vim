so ~/.config/nvim/plugins.vim

" sets
syntax on
set noswapfile
set numberwidth=2
set smartindent
set cindent
set shiftwidth=2
set splitbelow
set number
set relativenumber
set mouse=a
set clipboard=unnamed
set showcmd
set showmatch
set encoding=UTF-8
set cursorline
set fo-=c fo-=r fo-=o
set termguicolors
set background=dark
set updatetime=100
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
highlight Normal ctermbg=NONE

au BufEnter * set fo-=c fo-=r fo-=o

so ~/.config/nvim/maps.vim



