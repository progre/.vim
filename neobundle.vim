set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim.git/
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'Shougo/neobundle.vim', {'directory': 'neobundle.vim.git'}
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-powerline'

filetype plugin on
filetype indent on

let g:unite_data_directory='~/.vim/work/unite'
let g:unite_enable_split_vertically=1
let g:unite_winwidth=20

" neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_ignore_case=1

nnoremap <Space><Space> :<C-u>VimFiler -no-quit -split -winwidth=20<CR>set nonumber

let &termencoding = &encoding
set encoding=utf-8
" `fancy' ÉeÅ[É}Ç…êÿÇËë÷Ç¶
"let g:Powerline_symbols = 'fancy'
