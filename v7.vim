:echo '========'
:echo "mod version 7"
:echo '========'

" 3 Jan added for base16 material hybrid
" let g:base16_shell_path=base16-builder/output/shell/

set nocompatible
set mouse=a
set laststatus=2
set number
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab

"original
:let mapleader = "\\"

" original
syntax on
set background=light
set t_Co=256
let g:solarized_termcolors=256
" colorscheme moonshine
" change 3 Jan
let g:sierra_Twilight = 1
colorscheme sierra

"original
":set list
:set listchars=eol:¬,space:·
nmap <leader>l :set list!<CR>

"original
:inoremap jf <esc>
:inoremap fj <esc>

"original
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

"original
:map - dd
:map <space> viw
:map + ddp
:match ErrorMsg /\%>73v.\+/

" from 18 Nov
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
call plug#end()
