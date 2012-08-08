nnoremap <Space>s. :<C-u>source $MYVIMRC<CR>
nnoremap <Space>global. :<C-u>edit ~/.vim/global.vim<CR>
nnoremap <Space>bundle. :<C-u>edit ~/.vim/neobundle.vim<CR>

set backup
set backupdir=~/.vim/backup

set swapfile
set directory=~/.vim/swapfile

set number
set clipboard=unnamed "クリップボードと共有
set incsearch

" 全角スペースを視覚化する
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

