"syntax related configuration
set nocompatible
set backspace=2
"set paste
syntax on
filetype plugin indent on
"set foldmethod=syntax




"Indentation related settings

set autoindent
"set cindent
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set hlsearch






"view related changes
set t_Co=256
set nu
set background=light
"colorscheme distinguished 
colorscheme solarized



"SETTING UP THE VIM-PLUG PLUGIN MANAGER

call plug#begin()  "This starta the vim plug manager

	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic'
	Plug 'bling/vim-airline'
        Plug 'altercation/vim-colors-solarized'
	Plug 'flazz/vim-colorschemes'
	Plug 'kien/ctrlp.vim'
        Plug 'tpope/vim-fugitive' 
        "This all three plugins is for snipmate
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'tomtom/tlib_vim'
        Plug 'garbas/vim-snipmate'
        Plug 'honza/vim-snippets'



call plug#end() "End vim-plug manager




"nerdTree plugin settings
:map <C-n> :NERDTree
"autocmd vimenter * NERDTree


"syntasctic settings //syntax checking pluignin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim javascript configurations


let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"



"javascript libratry syntax Plug 'othree/javascript-libraries-syntax.vim'

let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,chai'

"adding some angular syntak for removing syntastic to throw error
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "ng-']
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "ui-']
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "rr-']
let g:syntastic_html_tidy_ignore_errors=[
    \'proprietary attribute "ng-',
    \'proprietary attribute "uib-',
    \'proprietary attribute "pdk-',
    \'proprietary attribute "ui-'
    \'proprietary attribute "rr-'
    \'proprietary attribute "layout'
    \]
"markdown
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown
