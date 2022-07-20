let mapleader=" "

"normal mode
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>x :!node %<CR>
nnoremap <silent> <M-z> :set wrap!<CR>

nnoremap <silent> <C-s> :Rg<CR>
nnoremap <silent> <C-f> :Files<CR>
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv 
nnoremap <leader>h :nohl<CR>
nnoremap <leader>j :vsplit<CR>
nmap <leader>f <Plug>(coc-format-selected)

"---Terminal
vnoremap <C-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <C-t> :split<CR>:ter<CR>:resize 15<CR>
"split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

" Files and nerdtree config
nnoremap bb :Buffers<CR> 
nnoremap tp :tabprev<CR>
nnoremap tn :tabnext<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
"Nerdtree config
nmap <leader>b :NERDTreeToggle<CR>
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle
let NERDTreeMapOpenInTab='<ENTER>'
let g:user_emmet_expandabbr_key=',,'
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
" check if nerdtree is open
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

"IndentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1

"coc config
nmap <silent> gd <Plug>(coc-definition)
let g:coc_global_extensions = ['coc-snippets', 'coc-html',  'coc-blade', 'coc-htmldjango', 'coc-html-css-support', 'coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json', 'coc-phpls', 'coc-python', 'coc-json', 'coc-docker']

nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Git Gutter 
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
let g:gitgutter_enabled=1
let g:gitgutter_map_key=0

let g:neoformat_try_node_exe=1
let g:Hexokinase_highlighters = ['backgroundfull']

" vim-visual-multi configuration {{{1

let g:VM_mouse_mappings= 1
let g:VM_theme= 'gruvbox'
 
let g:VM_maps = {}
let g:VM_maps["Undo"]= 'u'
let g:VM_maps["Redo"]= '<C-r>'

let g:UltiSnipsJumpForwardTrigger="<TAB>"
