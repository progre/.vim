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
NeoBundle 'Lokaltog/vim-powerline'

filetype plugin on
filetype indent on

let g:unite_data_directory=expand('~/.vim/work/unite')

" neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_ignore_case=1

"let g:Powerline_symbols='unicode'

"set encoding=utf-8
let g:Powerline_theme = 'skwp'
let g:Powerline_colorscheme='skwp'

nnoremap <Space><Space> :<C-u>call CreateIDE()<CR><C-w>l
function! CreateIDE()
  only
  25vs
  Unite -buffer-name=buf -no-quit -no-split buffer
  sp
  setlocal nonumber
  VimFiler -buffer-name=drive -no-quit
endfunction
