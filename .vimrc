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

"Ruler
set ruler


let mapleader = ","

nnoremap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:~,extends:>,precedes:<,nbsp:_

"Git commits
au FileType gitcommit set tw=72


augroup vimrc
  autocmd!
augroup END

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd vimrc BufWritePre * :%s/\s\+$//e "clean extra whitespace on write
