set textwidth=80  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

let mapleader = ","

syntax enable
filetype indent on
filetype plugin on

set number

set incsearch
set hlsearch
nnoremap <Leader><space> :nohlsearch<CR>

imap jj <Esc>

map gn :bn<cr>
map gp :bn<cr>
map gd :bn<cr>

match ErrorMsg '\s\+$'

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

set showcmd

set tags+=$HOME

set backspace=indent,eol,start " Fix delete key on mac

" Autocompletion with <Tab> for vim commands
set wildmenu
set wildmode=list:longest,full

set laststatus=2
