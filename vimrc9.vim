:echo '========'
:echo "mod version 9"
:echo '========'

scriptencoding utf-8
set encoding=utf-8

set nocompatible
set mouse=a
set laststatus=2
set number
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab

"cursor line and column added 7 Mar 2019
set cursorline


"original
:let mapleader = "\\"

" original
syntax on
set background=light
set t_Co=256
let g:solarized_termcolors=256
colorscheme moonshine
" change 3 Jan
" let g:sierra_Twilight = 1
" colorscheme sierra

":set list
:set listchars=eol:¬,space:·
nmap <leader>l :set list!<CR>

" on leader use cursor column 7 Mar
" set cursorcolumn
nmap <leader>c :set cursorcolumn!<CR>

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
" call plug#begin('~/.vim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'airblade/vim-gitgutter'
" call plug#end()
"

"==========================================================
"7 Feb older statusline mods

"Display Git branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction


set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

"=============================================================
" 10 Feb for jsx and react highlights
call plug#begin('~/.vim/plugged')

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

call plug#end()



