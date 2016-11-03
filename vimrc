set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 expandtab


set autochdir
set title
set incsearch
set number
set wildmenu

execute pathogen#infect('bundle/{}', '~/.vim/bundle/{}')
syntax on
filetype plugin indent on

set list listchars=trail:¶

let python_highlight_all = 1


let g:syntastic_python_checkers = ['pylint', 'pep8']

""""" NERDtree
" open NERDtree when executing vi
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDtree when executing vi FILE
autocmd vimenter * NERDTree
" close NERDtree when only panel left on close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" popen nerd tree with C-n
map <C-n> :NERDTreeToggle<CR>
" put cursor not in NERDtree on startup
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" Show hidden files by default
let NERDTreeShowHidden=1

""" airline
"' list of buffers
let g:airline#extensions#tabline#enabled = 1
"" show filename
let g:airline#extensions#tabline#fnamemod = ':t'


""buffers
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" close buffer without split closing
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>.

"disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>



"folding:
set foldmethod=indent       " automatically fold by indent level
set nofoldenable            " ... but have folds open by default

