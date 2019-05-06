" ## PLUGINS
call plug#begin('~/.vim/plugged')
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'

" Plug 'vim-scripts/Conque-GDB'

Plug 'altercation/vim-colors-solarized'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'w0rp/ale'
Plug 'zyedidia/vim-snake'
call plug#end()


let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" ## STYLE
set number

" ## MAPPINGS
let mapleader = ","
map <C-o> :NERDTreeToggle<CR>

:imap jk <Esc>

:nmap <Leader>w :w!<CR>
:nmap <Leader>q :q!<CR>
:nmap <Leader>qq :wq!<CR>


" control + direction to change panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" shift + direction to change tabs
noremap <S-l> gt
noremap <S-h> gT
