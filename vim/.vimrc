"
"   ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ██║   ██║██║██╔████╔██║██████╔╝██║     
"   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"    ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"     ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"    Author: ranguli
"    GitHub: www.github.com/ranguli/dotfiles
"    2017



"Sets
set nocompatible                " be iMproved, required 
set t_Co=256
let base16colorspace=256
let livepreview_previewer = 'zathura' 


filetype off                    " required 
filetype plugin indent on       " this dictates how tabs and spaces work, 
syntax on
set tabstop=4                   " it's setup so that tabs don't exist,
set shiftwidth=4                " a tab is just simply 4 spaces.
set expandtab
set number
set clipboard=unnamedplus       " use the systems clipboard, so we can copy in
                                " and out of vim easily 
let g:livepreview_previewer = 'zathura'

if has("gui_running")
    "set guioptions -=T             " Settings to hide the toolbar,
    set guioptions -=m             " menubar, left and right scrollbar
    set guioptions -=r             " in GUI vim.
    set guioptions -=L 
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    set lines=60
    set columns=120
endif

"Remappings
noremap <Space> :
noremap <S-l> gt   
noremap <S-h> gT  

noremap <C-l> <C-w>l 
noremap <C-h> <C-w>h 
noremap <C-j> <C-w>j 
noremap <C-k> <C-w>k
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

"Vundle
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'raimondi/delimitmate'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'dracula/vim'
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/goyo.vim'

call vundle#end()            " required

" Startup / Runtime
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_dark_inactive_border = 1
let g:airline_solarized_bg='dark'

"autocmd vimenter * NERDTree

