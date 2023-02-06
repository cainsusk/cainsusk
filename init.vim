" Cain Susko -- 2022.11.23
"
" This is a bare-bones config for vim :) 


" BASIC SETUP:
" -----------
" line numbering
set number relativenumber	
"write spaces rather than a tab character
set expandtab			
"auto indents for ease
set autoindent smartindent
"power line
set cursorline			
" file type recognition
filetype plugin on
" spell check language
set spelllang=en_ca
" fuzzy file finding
set path+=**
" wild menu for tab-completion etc
set wildmenu
" make terminal interactive so you can use aliases and stuff from bashrc in
" vim commands
set shellcmdflag=-ic


" COLOURSCHEME:
" ------------
" The colourscheme of Vim can be seen with ":colorscheme". All possible
" colourschemes you can use can be seen with ":colorscheme <Ctrl-d>" and then
" set with ":colorscheme X".

colorscheme peachpuff

" SHORTCUTS:
" ---------
" press bracket then return to complete set
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<tab> []<Esc>i
inoremap (<tab> ()<Esc>i
inoremap {<tab> {}<Esc>i
inoremap <<tab> <><Esc>i
inoremap "<tab> ""<Esc>i
inoremap '<tab> ''<Esc>i
inoremap $<tab> $$<Esc>i

" search for file and open in new tab
nnoremap F<CR> :ftab 

" open nvim configuration in new tab
command! Conf :tabe ~/.config/nvim/init.vim

" USER MODES:
" ----------
" these functions which have settings for non-normal vim usage. 

" WP:
" This function starts a mode useful for Word Processing 
" ie. Essay writing.
func! WordProcessorMode()
        setlocal textwidth=80
        setlocal spell 
        setlocal nonumber
endfu
command! WPgo call WordProcessorMode()
func! NoWordProcessorMode()
	setlocal textwidth=0
	setlocal nospell
	setlocal number
endfu
command! WPno call NoWordProcessorMode()

" PLUGINS:
" -------
" plugins which are managed using vim-plug. vimplug must be installed for this
" to work.
" The following command will do this automatically if it isnt already
" installed. Curl must be installed for this to work.

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Next are the plugins we would like to install:

call plug#begin()

        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-commentary'

        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vim-pandoc/vim-pandoc-syntax'
        Plug 'mracos/mermaid.vim'

call plug#end()

" And finally, any plugin configuration and general info

" NERDTREE:
" Allows you to explore the file tree from vim. You can also do this with
" netrw but,, this one is prettier.


" FUGITIVE:
" A Git plugin for vim ! to get started use ":G".


" COMMENTARY:
" A plugin that comments code using the right glyph hopefully. In normal mode
" use "gcc" to toggle comments. To toggle a paragraph in normal mode use "gcap".
" In visual use "gc". 


" VIM PANDOC:
" vim-pandoc and vim-pandoc-syntax add utilities and highlighting for working
" with pandoc and markdown. Also has support for TeXtile.

" Disables folding headers in markdown and TeXtile
let g:pandoc#modules#disabled = ["folding"]


" MERMAID:
" Adds support for mermaid syntax highlighting within mermaid files ".mmd" and 
" ".mermaid"
