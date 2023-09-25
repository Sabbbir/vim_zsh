" Highlighted search
set hlsearch

"Wrap text
set wrap

"mouse support
set mouse=a

"highlight current line
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" search casesensitive
set ignorecase
set smartcase

"show matching part
set showmatch

" search incrementally
set incsearch

" tab size = 4 
set tabstop=4
set softtabstop=4

" basic
syntax on
set encoding=utf-8
set number relativenumber

" status bar
set laststatus=2
set statusline=%f\ -\ FileType:\ %y

" auto complete (ctrl+n to turn on)
set wildmode=longest,list,full

" background
set background=dark

".vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

if !has('gui_running')
  set t_Co=256
endif

" Dont show the insert/visual
set noshowmode

" vertically center document in insert mode
autocmd InsertEnter * norm zz


call plug#begin('~/.vim/plugged')

" Vim github wrapper
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'

call plug#end()
