:echo '========'
:echo "mod version 4"
:echo '========'

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

:map - dd
:map <space> viw
:map + ddp

"added 12 Dec 17
:match ErrorMsg /\%>73v.\+/




"==========================================================
"10 Jan 17 statusline mods



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


