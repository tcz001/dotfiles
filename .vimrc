call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'

let NERDTreeShowHidden=1

Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'ARM9/arm-syntax-vim'


" Initialize plugin system
call plug#end()

map <C-e> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

let g:go_fmt_command = "goimports"
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
"let g:go_fold_enable = ['import', 'package_comment']
set wrap!


filetype plugin indent on
set nocursorline " don't highlight current line
set foldmethod=syntax

" keyboard shortcuts
inoremap jj <ESC>
" fix Esc conflict using neoCompletion
iunmap <Esc>

" gui settings
if (&t_Co == 256 || has('gui_running'))
    if ($TERM_PROGRAM == 'iTerm.app')
        let g:solarized_termcolors=16
        set background=dark
        color solarized
    else
        colorscheme desert
    endif
else
    colorscheme desert
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
" cscope min config
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
" set clang complete options
let g:clang_debug = 1
let g:clang_library_path     = '/usr/local/opt/llvm/lib/libclang.dylib'
let g:clang_use_library      = 1
let g:clang_complete_auto    = 1
let g:clang_hl_errors        = 1
let g:clang_auto_select      = 1
let g:clang_complete_copen   = 1
let g:clang_complete_macros  = 1
let g:clang_complete_patters = 1
let g:clang_periodic_quickfix= 1
let g:clang_snippets         = 1
let g:clang_close_preview    = 1
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'
set completeopt=menu,longest
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = 'python'
let g:cscope_silent = 1

" set golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>i <Plug>(go-def)
au FileType go nmap <leader>t :GoAlternate<CR>
au FileType go nmap <leader>b :GoDebugBreakpoint<CR>
au FileType go nmap <C-S-r>r <Plug>(go-run)
au FileType go nmap <C-S-t>t <Plug>(go-test)
au FileType go nmap <leader><C-S-r> :GoDebugStart
au FileType go nmap <leader><C-S-t> :GoDebugTest
au FileType go nmap <S-Down> <Plug>(go-debug-next)
au FileType go nmap <S-Right> <Plug>(go-debug-continue)
au FileType go nmap <S-Up> <Plug>(go-debug-stop)
set clipboard=unnamed

au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
" ctags
set tags=./tags,tags;$HOME
