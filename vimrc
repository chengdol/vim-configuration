" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

" vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" nerdtree
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
" fuzzy finder
" https://github.com/junegunn/fzf#as-vim-plugin

" installed using git:
" git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
" ~/.fzf/install
Plug '~/.fzf'
" Initialize plugin system
call plug#end()

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
"colorscheme topfunky-light

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
