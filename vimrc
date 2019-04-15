" Install Vim Plug, and then installing the plugins listed here is as easy as
" :PlugInstall

" Vim Plug
" https://github.com/junegunn/vim-plug

let g:plugin_path = "$HOME/.vim/plugged"

call plug#begin(g:plugin_path)

" Vim-Perl
" Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

" Snazzy Theme
Plug 'connorholyday/vim-snazzy'

" Minimalist Airline Theme
Plug 'dikiaap/minimalist'

" Material theme
Plug 'kaicataldo/material.vim'

" Nord theme
Plug 'arcticicestudio/nord-vim'

" Status Bar
Plug 'vim-airline/vim-airline'

" Status Bar Themes
Plug 'vim-airline/vim-airline-themes'

" File Tree
Plug 'scrooloose/nerdtree'
Plug 'Nopik/vim-nerdtree-direnter'

" Vim Fugitive (Git Wrapper)
Plug 'tpope/vim-fugitive'

" Show commit message in status line with :Gblame
Plug 'tommcdo/vim-fugitive-blame-ext'

" Syntax Highlighting
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'moll/vim-node', {'for': ['javascript', 'javascript.jsx', 'json']}
Plug 'alampros/vim-styled-jsx'
Plug 'mxw/vim-jsx'

" Expand CSS selectors into HTML or JSX
" eg, %hs#tagline.hero-text into <h2 id="tagline" className="hero-text"></h2>
" Supposedly just by pressing tab
Plug 'mattn/emmet-vim'

" Syntax Checking
Plug 'w0rp/ale'

" Prettier - Auto formatting
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Strip trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Highlight CSS color with actual color
Plug 'ap/vim-css-color'

" Auto close HTML tag
Plug 'alvan/vim-closetag'

" Better pasting
Plug 'ConradIrwin/vim-bracketed-paste'

call plug#end()


" Plug config
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
  \      'extends' : 'jsx',
  \  },
  \}

" Linting
let g:ale_sign_error = '!' " Less aggressive than the default '>>'
let g:ale_sign_warning = '!'
let g:ale_cache_executable_check_failures = 1 " Cache failed executable checks
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'always'

" Don't require .jsx extension
let g:jsx_ext_required = 0

" NERDTree hotkey: F2
map <F2> :NERDTreeToggle<CR>

" NERDTree Delimiter for MacOS
let g:NERDTreeNodeDelimiter = "\u00a0"

" NERDTree open as tab
let NERDTreeMapOpenInTab='<ENTER>'

"Close VIM if the only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup file-types
  autocmd!

  autocmd BufNewFile,BufRead *.html setlocal syntax=swig
  autocmd BufNewFile,BufRead *.sss setlocal syntax=stylus
  autocmd BufNewFile,BufRead *.ts,*.snap*,*.es6,*.tsx setlocal filetype=javascript.jsx
  autocmd BufNewFile,BufRead *stylelintrc,*eslintrc,*babelrc,*jshintrc setlocal syntax=json
  autocmd BufNewFile,BufRead *.css setlocal syntax=scss
  autocmd BufNewFile,BufRead *.cshtml setlocal filetype=cshtml

  " Wrap text and turn on spell for markdown files
  autocmd BufNewFile,BufRead *.md setlocal wrap linebreak spell filetype=markdown

  " Automatically wrap at 72 characters and spell check git commit messages
"  autocmd FileType gitcommit setlocal textwidth=72
"  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-
augroup END







"----------------------
" User Config
"-----------------------

set autoindent

" Tabs
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
map <F3> :tabp<CR>
map <F4> :tabn<CR>

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to the right and bottom
set splitbelow
set splitright

" Git Blame
map <F5> :Gblame<CR>

" Theme
set background=dark
colorscheme mysticaltutor

" UTF-8 Encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc


" Use unix endlines
set ff=unix
setlocal fileformat=unix

" Treat <li> and <p> tags like block tags
let g:html_indent_tags='li\|p'

" Use ``indent` based folding
set foldmethod=indent
" Disable folding until `zc` or `zM` etc is used
set nofoldenable

" Using `set: hidden` causes a buffer with unsaved canges
" to be hidden instead of closed when a new buffer is opened.
set hidden

" Briefly move the cursor to the matching brace
set showmatch

" Lazyredraw attempts to solve Vim lag by reducing
" the amount of processing required. When enabled,
" any action that is not typed will not cause the
" screen to redraw
set lazyredraw

" Don't display the current mode (Insert/Visual/Replace).
" This info is already shown in Airline.
set noshowmode

" Stop vim trying to syntax highlight long lines, typically found
" in minified files. This greatly reduces lag yet is still wide
" enough for large displays.
set synmaxcol=300

" Highlight current line
set cursorline

" Indent using two spaces, and not tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

"Smoother horizontal scrolling
set sidescroll=1

" Allow backspace in insert mode
set bs=2

" Don't wrap lines
set nowrap

" Keep cursor in the same place when switching buffers
set nostartofline

" Show col and line position in the statusbar
set ruler

" Eliminate delay when switching modes
" set timeoutlen=0
set timeoutlen=0 ttimeoutlen=0

" Auto save changes before switching buffer
set autowrite

" Add the g flag to search/replace by default
set gdefault

" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,nbsp:_

set nolist

" Disable error bells
set noerrorbells

" Show the current mode
set title

" Line numbers
set number
set norelativenumber

" Start scrolling before cursor gets to the edge
set scrolloff=5
set sidescrolloff=15
set sidescroll=1

" Remap annoying mistakes
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev W w


" Set the temp directory for backup and swap files to /tmp
" This keeps them out of the working directories and avoids
" issues with things like Metro Bundler which are monitoring
" the filesystem for changes and don't like these files much.
set dir=$HOME/.vim/tmp






"------------------
" Plugin Config
"------------------


let g:airline_theme = 'material'
"let g:airline_theme = 'nord'
"let g:airline_theme = 'minimalist'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#enabled = 0 " Enable the list of buffers
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t' " Show the filename
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#show_close_button = 0
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline#extensions#default#layout = [[ 'a', 'b', 'c' ],[ 'x', 'z', 'error', 'warning' ]]

