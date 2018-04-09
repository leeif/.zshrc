" vim -u test/vimrc
set nocompatible

set nowrap

let bundle_dir = '~/.vim/bundle/'
" let src = 'http://github.com/gmarik/vundle.git'

" Vundle Options
" let g:vundle_default_git_proto = 'git'

"silent execute '!mkdir -p '.bundle_dir
"silent execute '!ln -f -s ~/.vim/bundle/Vundle.vim '.bundle_dir

filetype off
syntax on

runtime macros/matchit.vim

" This test should be executed in "test" directory
exec 'set rtp^='.bundle_dir.'Vundle.vim/'

call vundle#begin(bundle_dir)


Plugin 'molokai' 

Plugin 'ctrlpvim/ctrlp.vim'

Bundle 'Valloric/YouCompleteMe'

"Plugin 'vim-syntastic/syntastic'

Bundle 'majutsushi/tagbar'

Bundle 'vim-airline/vim-airline'

Bundle 'vim-airline/vim-airline-themes'

Bundle 'scrooloose/nerdtree'

"Bundle 'scrooloose/nerdcommenter'

" github username with dashes
Bundle 'vim-scripts/ragtag.vim'

" original repo
Bundle 'altercation/vim-colors-solarized'
" with extension
Bundle 'nelstrom/vim-mac-classic-theme.git'
"
"  invalid uri
"Bundle 'nonexistinguser/yupppierepo.git'

" full uri
"Bundle 'https://github.com/vim-scripts/vim-game-of-life'
" full uri
"Bundle 'git@github.com:gmarik/ingretu.git'
" short uri
"Bundle 'gh:gmarik/snipmate.vim.git'
"Bundle 'github:mattn/gist-vim.git'

" local uri stuff
"Bundle '~/Dropbox/.gitrepos/utilz.vim.git'
"Bundle 'file://Dropbox/.gitrepos/utilz.vim.git'

" with options
"Bundle 'rstacruz/sparkup.git', {'rtp': 'vim/'}
"Bundle 'matchit.zip', {'name': 'matchit'}

" Camel case
"Bundle 'vim-scripts/RubySinatra'

" syntax issue #203
"Bundle 'jimenezrick/vimerl'

" Static bundle: Same name as a valid vim-scripts bundle
Bundle 'latte', {'pinned' : 1}
if !isdirectory(expand(bundle_dir) . '/latte')
  call mkdir(expand(bundle_dir) . '/latte', 'p')
endif

call vundle#end()              " required
filetype plugin indent on      " Automatically detect file types.

set wildignore+=doc            " should not break helptags
set wildignore+=.git           " should not break clone
set wildignore+=.git/*         " should not break clone
set wildignore+=*/.git/*
colorscheme molokai
" TODO: helptags fails with this
" set wildignore+=doc/*        " should not break clone
" set wildignore+=*/doc/*

" au VimEnter * BundleInstall
autocmd vimenter * NERDTree
map <C-k> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F8> :TagbarToggle<CR>

" ctrlp.vim
let g:ctrlp_map = '<c-m>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 

" e test/files/erlang.erl
" vim: set expandtab sts=2 ts=2 sw=2 tw=78:
