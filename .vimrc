""" This file has been installed to your system using a git repository to keep
""" files updated across multiple systems.
"""
""" Initial installation of this file is performed with the command:
"""    git init
"""    git remote add -t master origin \
"""                   https://dralthiace@github.com/dralthiace/dotfiles.git ~/
"""    git pull
"""    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle                                                    ~/.vim/bundle/vundle
"""    vim
"""    :BundleInstall   (type this within vim)
"""
""" Update the current system from the git repo:
"""    git pull
"""    vim
"""    :BundleInstall   (and also :BundleInstall! or :BundleClean as needed)
"""
""" Update the git repo with changes in local file
"""    git commit -am '<description of changes'
"""    git push -u origin master
"""
"""
""" (NOTE: All above commands should be executed from your home directory)
"""

""""""""""""""""""""""""
""" Vundle Configuration
""""""""""""""""""""""""
set nocompatible  " no vi compatibility.
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'jpo/vim-railscasts-theme' "This doesn't work in teminal
Bundle 'jgdavey/vim-railscasts'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'matchit.zip'
Bundle 'project.tar.gz'
"Bundle 'AutoComplPop'
"Bundle 'rubycomplete.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

""""""""""""""""""""""""""""
""" End Vundle Configuration
""""""""""""""""""""""""""""

set background=dark

filetype on  " Automatically detect file types.

" Add recently accessed projects menu (project plugin)
set viminfo^=\!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Auto/Omni Complete Settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" Ruby Code Complete settings
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nonu  " Line numbers off
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
colorscheme railscasts

" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"set list
" Show $ at end of line and trailing space as ~
"set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
"set mousehide  " Hide mouse after chars typed
"set mouse=a  " Mouse in all modesc

set directory=~/.vim

" complie stuff with the F5 key
set makeprg=ruby\ %
nnoremap <f5> :make<return>
