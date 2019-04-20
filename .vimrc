set exrc
set secure
set modelines=0
set nomodeline

set nocompatible
filetype off

" filetype indent plugin on
" syntax on
" set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set backspace=indent,eol,start
set autoindent
set number

so ~/.vim/plugins.vim

filetype indent plugin on
syntax on

" YouCompleteMe
set encoding=utf-8

" lightline config
set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme' : 'solarized',
    \ }

" fix mswin
set nocompatible

" Plugin 'davidhalter/jedi-vim'
"let script_dir = fnamemodify(expand('<sfile>'), 'h:h')
"let &runtimepath = script_dir.','.&runtimepath.','.script_dir.'/after' 
" jedi vim settings
" let g:jedi#force_py_version = 2

" auto backup
set backup

set backupdir=~/.vim/backup//

set writebackup

set backupcopy=yes

au BufWritePre * let &bex = '@' . strftime("%F.%H.%M")

" NERDTree
autocmd StdinReadPre * led s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" remap 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remove trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set tags=tags
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <C-W>[ :vsplit [<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif    
