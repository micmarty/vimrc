execute pathogen#infect()

"1. Global editor settings
filetype on
syntax on
colorscheme Tomorrow-Night	    " download link: https://github.com/chriskempson/tomorrow-theme | copy from vim/colors/*
set guifont=Menlo\ Regular:h18	" download link: http://www.cufonfonts.com/en/font/13494/menlo	| just install the font
set lines=35 columns=150
set colorcolumn=130
set number
set showmatch

"2. Key mappings
let mapleader=" "		            " use spacebar as <leader> in lines below
map <leader>s :source ~/.vimrc<CR>

  "2.1 Re-Open previously opened file with double space keypress
nnoremap <leader><leader> :e#<CR>

  "2.2 Move lines with shift+up/down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

  "2.3 Reload fuzzy search indexing -> newly created files are not indexed by default, need to relead manually
noremap <Leader>r :CommandTFlush<CR>

"3. Smart defaults
set hidden
set history=10

"4. Indenting logic
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found phrases
set hlsearch


"5. Plugins
  "5.1 Lighline -> prettify mode bar like INSERT, NORMAL etc.
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = { 'colorscheme': 'wombat' }
set noshowmode        " disable built-in status mode bar


  "5.2 Command-T -> fuzzy finder
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <C-\> :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
