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

let NERDTreeShowHidden=1          " Show hidden files in NERDTree

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

"set number                        " Show line numbers.
"set ruler                         " Show cursor position.

set wrap                          " Turn on line wrapping. enable by default
set scrolloff=3                   " Show 3 lines of context around the cursor.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set title                         " Set the terminal's title
" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" shift with tab
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
"set softtabstop=2               " keep default tab stop, only change in buffer            

" Indent code block mapping
vmap > >gv
vmap < <gv
vmap <Tab> >gv
vmap <S-Tab> <gv

" auto complete
imap <Tab> <C-N>
imap <S-Tab> <C-P>

" fold
set foldmethod=indent
" make it really high, so they're not displayed by default
set foldlevel=9999

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

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
