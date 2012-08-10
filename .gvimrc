source ~/.vimrc

nnoremap <Space>s. :<C-u>source ~/.gvimrc<CR>
nnoremap <Space>gvimrc. :<C-u>edit ~/.gvimrc<CR>
source ~/.vim/guifont.vim
set guioptions+=c   " ダイアログを使用しない
set guioptions-=m   " メニュー非表示
set guioptions-=r   " 垂直スクロールバーを表示しない
set guioptions-=L    "左スクロールバー
set guioptions-=T   " ツールバー非表示
set lines=40
set columns=120
gui
set transparency=230

