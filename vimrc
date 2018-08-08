execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
set nobackup
set nowritebackup
set noswapfile

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace ----------------------------------------------------------------

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching -----------------------------------------------------------------

set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital
                                " letter

"" Appearance ----------------------------------------------------------------

set ruler                       " line and column number.
set list                        " show invisble characters.
set background=dark
colorscheme dracula

set cc=81                       " show right margin at 80 characters.

set number

" List chars
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as "  "
set listchars+=trail:.          " show trailing spaces as dots
set listchars+=extends:>        " The character to show in the last column
                                " when wrap is off and the line continues
                                " beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column
                                " when wrap is off and the line continues
                                " beyond the right of the screen

" Always keep at least five lines visible when at the bottom of a file.
set scrolloff=5

" Yanking a block returns to the last cursor position, not the top.
:vmap y ygv<Esc>

" Discourage using cursor keys.
map <Up> <nop>
map <Down> <nop>
map <Right> <nop>
map <Left> <nop>
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

" No wrapping by default, thx.
au BufRead,BufNewFile * set nowrap

"" Ignores -------------------------------------------------------------------

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=vendor/gems/*,vendor/cache/*,.bundle/*,.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

"" Status Line ---------------------------------------------------------------

set laststatus=2  " always show the status bar

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Status line.
set statusline=%f\ %m\ %r
set statusline+=Line:%l/%L\ (%p%%)
set statusline+=\ Col:%v
