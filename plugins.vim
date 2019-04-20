" set runtime path to include Vundle
call plug#begin('~/.vim/plugged')

" Vundle manages Vundle

" powerbar thingy
Plug 'itchyny/lightline.vim'

" eunuch, rename, chmod
Plug 'tpope/vim-eunuch'

" GitGutter, shows marks, diffs, etc. 
" Plug 'airblade/vim-gitgutter'

" FZF with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" NERDTree
Plug 'scrooloose/nerdtree'

" bufexplorer
Plug 'jlanzarotta/bufexplorer'

" Jedi/Python Autocomplete
Plug 'davidhalter/jedi-vim'
"
" Command-T file finder
Plug 'wincent/command-t'

" Show marks
" Plug 'kshenoy/vim-signature'

" Git plugin
Plug 'tpope/vim-fugitive'

" Ctrl-P fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Conque Shell
Plug 'vim-scripts/Conque-Shell'

" GDB
" Plug 'vim-scripts/Conque-GDB'

call plug#end()
