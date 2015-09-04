set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set background=dark
set showcmd
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/vim-scripts/a.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/SirVer/ultisnips'
Plugin 'https://github.com/Townk/vim-autoclose'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/airblade/vim-gitgutter'
Plugin 'https://github.com/terryma/vim-multiple-cursors'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/LaTeX-Box-Team/LaTeX-Box.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " UltiSnips plugin
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " SuperTab plugin
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let loaded_supertab = 1" Uncomment the this line to disable the plugin
let g:SuperTabDefaultCompletionType='<c-x><c-u>'
" 'user' defined default
" completion type
let g:SuperTabDefaultCompletionType = 'context'
" 'context' defined
" default completion type
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabLongestHighlight=1
let g:SuperTabLongestEnhanced=1
"
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Airline plugin
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1
" Use Powerline fonts to show beautiful
" symbols
let g:airline_theme = 'murmur'                                          "
" Select 'murmur' theme as default one
let g:airline_inactive_collapse = 0
" Do not collapse the status line while
" having multiple windows
let g:airline#extensions#whitespace#enabled = 0                         " Do
" not check for whitespaces
let g:airline#extensions#tabline#enabled = 1
" Display tab bar with buffers
let g:airline#extensions#branch#enabled = 1
" Enable Git client integration
let g:airline#extensions#tagbar#enabled = 1
" Enable Tagbar integration
let g:airline#extensions#hunks#enabled = 1
" Enable Git hunks integration
"
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " NERDTree plugin
" "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeMouseMode = 2
" Single-click to expand the directory,
" double-click to open the file
let g:NERDTreeShowHidden = 1
" YCM
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:LatexBox_latexmk_options = "-pdf"
let g:LatexBox_viewer = "evince"
