set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Dracula Theme
Plugin 'dracula/vim', { 'name': 'dracula' }

" Emmet
Plugin 'mattn/emmet-vim'

" Airline
Plugin 'vim-airline/vim-airline'

" Javascript
Plugin 'pangloss/vim-javascript'

" CSS
Plugin 'hail2u/vim-css3-syntax'

" SASS
Plugin 'cakebaker/scss-syntax.vim'

" Twig
Plugin 'evidens/vim-twig'

" Vue
Plugin 'leafOfTree/vim-vue-plugin'

" Ctrl+P
Plugin 'kien/ctrlp.vim'

" Indentation
Plugin 'Yggdroot/indentLine'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Dracula Theme
syntax on
colorscheme dracula

" Iban configured shit
set number
set cursorline
set autoindent
set shortmess+=A

" Ctrl+P keybindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Vue plugin
let g:vim_vue_plugin_use_sass = 1

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" Ctrl+Plugin ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Indent set up
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Indentation lines
let g:indentLine_setColors = 239

" Remove delay on ESC key
set timeoutlen=1000 ttimeoutlen=0
