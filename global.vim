nnoremap <Space>s. :<C-u>source $MYVIMRC<CR>
nnoremap <Space>global. :<C-u>edit ~/.vim/global.vim<CR>
nnoremap <Space>bundle. :<C-u>edit ~/.vim/neobundle.vim<CR>

set backup
set backupdir=~/.vim/backup

set swapfile
set directory=~/.vim/swapfile

set number
set clipboard=unnamed "�N���b�v�{�[�h�Ƌ��L
set incsearch

" �S�p�X�y�[�X�����o������
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /�@/

