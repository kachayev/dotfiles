" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'rust-lang/rust.vim', { 'for': 'rust' }
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set number
set relativenumber

let g:rustfmt_autosave = 1


call plug#begin(stdpath('data') . '/plugged')

Plug 'arcticicestudio/nord-vim'
" Plug '/usr/local/bin/fzf'
Plug 'junegunn/fzf', {'do': './install -bin'}
Plug 'junegunn/fzf.vim'

call plug#end()

let g:fzf_buffers_jump = 1


set t_Co=256
syntax on
set background=dark
colorscheme nord
