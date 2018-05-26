"all plugins
call plug#begin()

	Plug 'scrooloose/nerdtree'

call plug#end()

"map space to default leader '\'
map <Space> <Leader>

"NERDTree maps and configs
map <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
"let NERDTreeMinimalUI = 1
"let NERDTreeHighlightCursorLine = 1
"let NERDTreeShowLineNumbers = 1

"tab maps
map <C-Right> :tabnext<CR>
map <C-Left> :tabprev<CR>

"general maps
map <Leader>w <C-w>

"general configs
set number	"number line
set nowrap 	"no wrapping to new line
"set ic		"ignore case when searching
set hls		"highlight search patterns
set is		"increment search
set ts=4        "set tab space to 4
set et          "expand tab to spaces
set fdm=syntax  "fold all code

