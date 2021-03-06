syntax on

set nu
set title
set tabstop=4
set sw=4
set ic
set hlsearch
set expandtab
set modifiable

" Similar with Git
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set backspace+=start,eol,indent

" a.vim
map <C-A> :A<CR>

" Fuzzy Finder
map <Leader>ff <ESC>:FufCoverageFile!<CR>
map <Leader>fd <ESC>:FufDir!<CR>

""""""""""""""""""""""""""""""""""""""""
"       Vim like a source insight      "
""""""""""""""""""""""""""""""""""'"""""
nmap <F6> :TlistToggle<CR>
let Tlist_Ctags_Cmnd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Left_Window = 1

nmap <F7> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"
autocmd vimenter * NERDTree

nmap <F5> :SrcExplToggle<CR>

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_isUpdateTags = 0

let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
map <F2> :tnext^M
map <F3> :tprevious^M

nmap <F8> :TrinityToggleAll<CR>

map <c-f> :call JsBeautify()<cr>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airlinetheme='wombat'

" Use current directory as vimshell prompt.
let g:vimshell_prompt_expr = 'escape(fnamemodify(getcwd(), ":~").">","\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '

" youcompleteme
" let g:ycm_global_ycm_extra_conf = '/home/minju.kim/Projects/KCL/build-webos-auto/BUILD/work/sa8155-webos-linux/webruntime/72.0.3626.121-12.auto.8-r24.1/git/src/tools/vim/chromium.ycm_extra_conf.py'


""""""""""""""""""""""""""""""""""""""""
"           Vundle Settings            "
""""""""""""""""""""""""""""""""""'"""""
set nocompatible               " be iMproved
filetype off                   " required!
set t_Co=256
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" original repos on github
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/minju.kim/settings'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'

Plugin 'FuzzyFinder'

Plugin 'a.vim'
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'http://github.com/vim-scripts/SrcExpl'
Plugin 'https://github.com/vim-scripts/Trinity.git'

" :shell: Powerful shell implemented by vim
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/vimproc.vim'

Plugin 'kien/ctrlp.vim'

" Plugin 'lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin YouCompleteMe
" Plugin 'valloric/youcompleteme'
" Plugin 'rdnetto/ycm-generator'

Plugin 'maksimr/vim-jsbeautify'

call vundle#end()            " required
filetype plugin indent on     " required!
