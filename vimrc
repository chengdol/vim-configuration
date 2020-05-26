" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.


set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" Or use vividchalk
colorscheme topfunky-light

" Tab mappings.
nnoremap tt :tabnew<cr>
nnoremap te :tabedit
nnoremap tc :tabclose<cr>
nnoremap to :tabonly<cr>
nnoremap tn :tabnext<cr>
nnoremap tp :tabprevious<cr>
nnoremap tf :tabfirst<cr>
nnoremap tl :tablast<cr>
nnoremap tm :tabmove
