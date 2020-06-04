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

" gradle file plugin
" use :PlugInstall to install
Plug 'https://github.com/tfnico/vim-gradle.git'

" vim-bracketed-paste plugin
" enables transparent pasting into vim, no more :set paste
Plug 'https://github.com/ConradIrwin/vim-bracketed-paste.git'
call plug#end()

let NERDTreeShowHidden=1          " Show hidden files in NERDTree

" Controversial...swap colon and semicolon for easier commands
" previous shift+;, now only ;
"nnoremap ; :
"nnoremap : ;

" highlight the current line the cursor is on
set cursorline
" highlight the current column the cursor is on
"set cursorcolumn

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

"set number                        " Show line numbers.
set ruler                         " Show cursor position.

set wrap                          " Turn on line wrapping. enable by default
"set nowrap
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

" extremely useful to edit yaml file
set autoindent                   " always set autoindenting on
set copyindent                   " copy the previous indentation on autoindenting

set history=1000               " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo


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

" Tab mappings
" The default leader key is \
let mapleader=","                       " remap leader key to ,
" invoke for example: ,tt
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Quickly edit/reload the vimrc file
" $MYVIMRC is good
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" set Jenkins file syntax highlighting as groovy
" Jenkinsfile* means the file prefix as Jenkinsfile
au BufNewFile,BufRead Jenkinsfile* setf groovy
