set encoding=utf-8      "set encode
set nobackup            "do not create backup file
set noswapfile          "do not create swap file
set autoread            "automatically reload file when updated
set showcmd             "show command
set hidden              "enable opening files when buffer is being editted
set backspace=start,eol,indent "enable backspace
set expandtab           "use spaces instead of tabs
set shiftwidth=4        "automatic indent width
set number              "show line numbers
set title               "show editting file name
set showmatch           "complement parenthesis
set tabstop=4           "tab size
set smartindent         "automatic indent
syntax on               "enable syntax highlighting

" highlight two-byte spaces
hi ZenkakuSpace cterm=underline ctermfg=lightblue ctermbg=white
match ZenkakuSpace /　/

" key bindings
nnoremap <F1> <Esc>     "set f1 key as same as esc
inoremap <F1> <Esc>

" Search Settings
set ignorecase
set smartcase
set wrapscan
