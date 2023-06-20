" Cain Susko -- 2022.11.23
"
" This is a bare-bones config for vim :) 


" BASIC SETUP:
" -----------
" line numbering
set number relativenumber	
"write spaces rather than a tab character
set expandtab			
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

	" essential
        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-sleuth'
        Plug 'tpope/vim-surround'

	" less essential
	Plug 'junegunn/fzf'
        Plug 'leafgarland/typescript-vim'
        Plug 'andys8/vim-elm-syntax'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" And finally, any plugin configuration and general info

" NERDTREE:
" Allows you to explore the file tree from vim. you can also do this with
" netrw but,, this one is prettier.


" FUGITIVE:
" A Git plugin for vim ! to get started use ":G".


" COMMENTARY:
" A plugin that comments code using the right glyph hopefully. In normal mode
" use "gcc" to toggle comments. To toggle a paragraph in normal mode use "gcap".
" In visual use "gc". 


" SLEUTH:
" A plugin to automatically set shift/tab width based on file context.


" SURROUND:
" A plugin for putting things around text, like brackets!.


" ELM VIM SYNTAX:
" this plugin adds elm hightlighting -- apparently this should be native to
" vim/nvim but I cant get it to work... (not even on the ubuntu wsl)

" COC:
" adds shit to make autocomplete possible
" stops version warning (cause this vim is olddd)
let g:coc_disable_startup_warning = 1
" Shortcuts
" find references to symbol
nmap \r <Plug>(coc-references)
" rename symbol glabally
nmap \R <Plug>(coc-rename)
" get the type definition of a symbol
nmap \t <Plug>(coc-type-definition)
" see the definition in the code of a symbol
nmap \d <Plug>(coc-definition)
" format code
nmap \f <Plug>(coc-format)
