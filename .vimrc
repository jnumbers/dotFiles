"all plugins
call plug#begin()

	Plug 'scrooloose/nerdtree'

"   function! BuildYCM(info)
"       " info is a dictionary with 3 fields
"       " - name:   name of the plugin
"       " - status: 'installed', 'updated', or 'unchanged'
"       " - force:  set on PlugInstall! or PlugUpdate!
"       if a:info.status == 'installed' || a:info.force
"           !./install.py
"       endif
"   endfunction

"   Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

call plug#end()

"map space to default leader '\'
map <Space> <Leader>

"NERDTree maps and configs
map <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind
"let NERDTreeMinimalUI = 1
"let NERDTreeHighlightCursorLine = 1
"let NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

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

