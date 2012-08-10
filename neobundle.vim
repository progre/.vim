nnoremap <Space>bundle. :<C-u>edit ~/.vim/neobundle.vim<CR>

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
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ujihisa/unite-colorscheme'

filetype plugin on
filetype indent on


let g:unite_data_directory=expand('~/.vim/work/unite')
let g:vimfiler_data_directory=expand('~/.vim/work/vimfiler')

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_ignore_case=1

colorscheme darkblue
colorscheme solarized

nnoremap <Space><Space> :<C-u>call CreateIDE()<CR>
function! CreateIDE()
  only
  5split
  Unite -buffer-name=buffer -no-quit -no-split buffer
  wincmd j
  25vs
  setlocal nonumber
  VimFiler -buffer-name=drive -no-quit
  wincmd l
endfunction
