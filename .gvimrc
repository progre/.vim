source ~/.vimrc

set guioptions+=c   " ダイアログを使用しない
set guioptions-=m   " メニュー非表示
set guioptions-=r   " 垂直スクロールバーを表示しない
set guioptions-=L    "左スクロールバー
set guioptions-=T   " ツールバー非表示
nnoremap <Space>gvimrc. :<C-u>edit ~/.gvimrc<CR>
