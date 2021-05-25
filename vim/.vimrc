set nocompatible                  " Must come first because it changes other options.

packadd minpac
call minpac#init()
call minpac#add('airblade/vim-rooter')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-git')
call minpac#add('tpope/vim-rails')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('preservim/nerdtree')
call minpac#add('andymass/vim-matchup')
call minpac#add('leafOfTree/vim-vue-plugin')
call minpac#add('junegunn/fzf')

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

let mapleader=","                 " Change leader to a more easily typed character

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

syntax enable
set background=dark
colorscheme codeschool

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :<C-u>FZF<CR>
" this lets me go to switch between the last two files with just ,,
map <leader><leader> <C-^>

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec
