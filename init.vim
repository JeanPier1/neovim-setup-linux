call plug#begin("/home/jeanpier/.config/nvim/plugged")

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.

Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'


Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Theme airlene themes
Plug 'jreybert/vimagit'

Plug 'scrooloose/nerdcommenter'

"plugin for live html, css, and javascript editing in vim
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}



Plug 'AndrewRadev/tagalong.vim'


Plug 'sheerun/vim-polyglot'


Plug 'terryma/vim-multiple-cursors'

Plug 'Yggdroot/indentLine'

""Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


syntax on
"Funcionalidades
set mouse=a
set noerrorbells
set expandtab
set smartindent
set numberwidth=1
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard+=unnamedplus
set encoding=utf-8
set cursorline
set noshowmode
set colorcolumn=120

highlight ColorColumn ctermbg=238

" Luego de esta línea puedes agregar tus configuraciones y mappings
set autoindent " Activa pegado automatico
""set termguicolors  " Activa true colors en la terminal

set number

let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>


set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1

let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
" configure VimdevIcons
set encoding=UTF-8

" coc
set nocompatible
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" sangria" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4

"agregar correcciones de formatos
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']



command! -nargs=0 Prettier :CocCommand prettier.formatFile
highlight Comment cterm=italic gui=italic
nnoremap <silent>    <leader>bd :BufferClose<CR>
nnoremap <silent>    <S-Tab> :BufferPrevious<CR>
nnoremap <silent>    <Tab> :BufferNext<CR>
nnoremap <silent>    <S-left> :BufferPrevious<CR>
nnoremap <silent>    <S-right> :BufferNext<CR>




let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-angular',
      \'coc-emmet',
      \'coc-pyright',
      \'coc-marketplace',
      \'coc-snippets',
      \'coc-dictionary',
      \'coc-word',
      \'coc-syntax',
      \'coc-json']



let NERDTreeShowHidden=1

" Move up or down noremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <space>e :CocCommand explorer<CR>
nnoremap <space>E :CocCommand explorer<CR>

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [{'v':'~/.config/nvim/init.vim'},{'c':'~/.config/nvim/coc-settings.json'}]

let g:startify_lists = [{'header': [' Bookmarks'],    'type':'bookmarks'},{'header': [' MRU'],        'type':'files'},{ 'header': [' MRU '.getcwd()], 'type': 'dir' }]

nmap <A-ñ> :Startify<CR>


let g:startify_fortune_use_unicode=1

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Delete
nnoremap <C-x> :bdelete<CR>


let g:airline#extensions#ale#enabled = 0
let g:airline#extensions#tagbar#enabled = 1

""let g:airline#extensions#tmuxline#enabled = 0

let g:airline_theme = 'bubblegum'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_b = "%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:tagalong_filetypes = ['eco', 'eelixir', 'ejs', 'eruby', 'html', 'htmldjango', 'javascriptreact', 'jsx', 'php', 'typescriptreact', 'xml']
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'


let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

let bufferline = get(g:, 'bufferline', {})

let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

inoremap " ""<left>
inoremap (; ();<left><left>
inoremap [; [];<left><left>
inoremap ( ( )<left>
inoremap [ [ ]<left>
inoremap { { }<left>
""inoremap {<cr> {<cr>}<esc>O
""inoremap (<cr> (<cr>)<esc>O
""inoremap [<cr> [<cr>]<esc>O
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


let g:tagalong_mappings = [{'c': '_c'}, 'i', 'a']
let g:tagalong_verbose = 1
let g:tagalong_timeout = 200
inoremap <silent> <c-c> <c-c>:call tagalong#Apply()<cr>

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'




vnoremap <A-m> :MultipleCursorsFind >\zs.*\ze<<CR>

""let g:indentLine_setColors = 0
""let g:indentLine_char_list = ['|', '¦', '┆', '┊']
""let g:indentLine_concealcursor = 'inc'
""let g:indentLine_conceallevel = 2
""let g:indentLine_setConceal = 0
