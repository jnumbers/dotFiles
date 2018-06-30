"vim-plug
"""""""""
call plug#begin()

	Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'yuratomo/w3m.vim'

call plug#end()

"general maps
"""""""""""""
"map space to default leader '\'
map <Space> <Leader>
"change window focus
map <Leader>w <C-w>


"NERDTree maps and configs
""""""""""""""""""""""""""
map <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind
let NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
"let NERDTreeMinimalUI = 1
"let NERDTreeHighlightCursorLine = 1

"tab maps
"""""""""
map <C-Right> :tabnext<CR>
map <C-Left> :tabprev<CR>

"general configs options
""""""""""""""""""""""""
set number          "show number line
set nowrap          "no wrapping to next line
set hls             "high light search patterns
set is              "increment search
set ts=4            "set tab space to 4
set et              "expand tab to spaces
set fdm=syntax      "fold all code
set shiftwidth=4    "shift block width
set scrolloff=2     "lines above & below cursor
set laststatus=2    "
"set ic              "ignore cases

"general hilight options
""""""""""""""""""""""""
"remove line under number
hi LineNr term=NONE 
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline!<CR>
"'C:\w3m.exe'

let g:w3m#command = '/usr/bin/w3m'
"/usr/bin/
