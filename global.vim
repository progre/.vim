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
set list "空白文字の表示
set listchars=eol:$,tab:>\ ,trail:･

nmap <ESC><ESC> ;nohlsearch<CR><ESC> "Escの2回押しでハイライト消去

" 全角スペースを視覚化する
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

" ディレクトリの自動作成
augroup vimrc-auto-mkdir
    autocmd!
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
    function! s:auto_mkdir(dir, force)
        if !isdirectory(a:dir) && (a:force ||
            \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
            call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
        endif
    endfunction
augroup END

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END
hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

