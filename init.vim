call plug#begin("~/.vim/plugged")
  " Plugin Section
  " colorschemes
  Plug 'doums/darcula'
  Plug 'dracula/vim'

  " NERDTree
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " file searching
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  
  " intllySense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-eslint', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

call plug#end()
"Config Section
set number
set mouse=a
set showtabline=2
set tabstop=4
set softtabstop=4 expandtab
set shiftwidth=4 smarttab
set encoding=UTF-8
set noswapfile

syntax enable
colorscheme darcula
nnoremap ,<space> :nohlsearch<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 5
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" fzf filesearching
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
