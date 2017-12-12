execute pathogen#infect()

:let mapleader = "\\"

syntax on
set background=light
set t_Co=256
let g:solarized_termcolors=256
colorscheme moonshine

map <C-n> :NERDTreeToggle<CR>

":set list
:set listchars=eol:¬,space:·
nmap <leader>l :set list!<CR>

:set number
:set expandtab
:set tabstop=4
:set ruler
:set relativenumber
:set numberwidth=3 

:inoremap jf <esc>
:inoremap fj <esc>

:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

:echo '========'
:echo "mod version 3"

:map - dd
:map <space> viw
:map + ddp

"added 12 Dec 17
:match ErrorMsg /\%>73v.\+/



