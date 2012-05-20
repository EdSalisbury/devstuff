" Ed Salisbury's .vimrc

" Make VIM act like VIM, not VI
set nocompatible

" Set up TABs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

" Set up syntax highlighting
syntax on
filetype plugin on
filetype indent on
set formatoptions=qroc
set cindent

" Misc settings
set number       " Print line numbers
set background=dark
set pastetoggle=<F2>
set ff=unix
set copyindent
nnoremap <F3> :set nonumber!<CR>

" Clean up EOLs
autocmd BufWritePre * :%s/\s\+$//e

" Update window title string
let &titlestring = "Editing: " . expand("%:t")
if &term == "screen"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm"
  set title
endif
