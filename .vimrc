set encoding=utf-8 " Set default encoding

"Syntax highlighting
syntax enable

"Highlight search terms
set hlsearch

"Fix backspace...
set backspace=indent,eol,start

"Auto indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent


let mapleader = ","

nnoremap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<,nbsp:_
