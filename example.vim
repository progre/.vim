" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Vi�݊����[�h���I�t�iVim�̊g���@�\��L���j
set nocompatible

" �t�@�C�����Ɠ��e�ɂ���ăt�@�C���^�C�v�𔻕ʂ��A�t�@�C���^�C�v�v���O�C����L���ɂ���
filetype indent plugin on

" �F�Â����I��
syntax on


"------------------------------------------------------------
" ������������I�v�V����

" �o�b�t�@��ۑ����Ȃ��Ă����̃o�b�t�@��\���ł���悤�ɂ���
set hidden

" �R�}���h���C���⊮��֗���
set wildmenu

" �^�C�v�r���̃R�}���h����ʍŉ��s�ɕ\��
set showcmd

" ������������\���i<C-L>�������ƌ��݂̋����\������������j
set hlsearch

" http://www.vim.org/scripts/script.php?script_id=1876
" ���j�I�Ƀ��[�h���C���̓Z�L�����e�B��̐Ǝ㐫�ɂȂ��Ă����̂ŁA
" �I�t�ɂ��đ���ɏ�L��securemodelines�X�N���v�g���g���Ƃ悢�B
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" �������ɑ啶���E����������ʂ��Ȃ��B�������A������ɑ啶����������
" ���݂��Ă���Ƃ��͋�ʂ���
set ignorecase
set smartcase

" �I�[�g�C���f���g�A���s�A�C���T�[�g���[�h�J�n����Ƀo�b�N�X�y�[�X�L�[��
" �폜�ł���悤�ɂ���B
set backspace=indent,eol,start

" �I�[�g�C���f���g
set autoindent

" �ړ��R�}���h���g�����Ƃ��A�s���Ɉړ����Ȃ�
set nostartofline

" ��ʍŉ��s�Ƀ��[���[��\������
set ruler

" �X�e�[�^�X���C������ɕ\������
set laststatus=2

" �o�b�t�@���ύX����Ă���Ƃ��A�R�}���h���G���[�ɂ���̂łȂ��A�ۑ�����
" ���ǂ����m�F�����߂�
set confirm

" �r�[�v�̑���Ƀr�W���A���x���i��ʃt���b�V���j���g��
set visualbell

" �����ăr�W���A���x��������������
set t_vb=

" �S���[�h�Ń}�E�X��L����
set mouse=a

" �R�}���h���C���̍�����2�s��
set cmdheight=2

" �s�ԍ���\��
set number

" �L�[�R�[�h�͂����Ƀ^�C���A�E�g�B�}�b�s���O�̓^�C���A�E�g���Ȃ�
set notimeout ttimeout ttimeoutlen=200

" <F11>�L�[��'paste'��'nopaste'��؂�ւ���
set pastetoggle=<F11>


"------------------------------------------------------------
" �C���f���g�֘A�̃I�v�V���� {{{1
"
" �^�u�����̑���ɃX�y�[�X2���g���ꍇ�̐ݒ�B
" ���̏ꍇ�A'tabstop'�̓f�t�H���g��8����ς��Ȃ��B
set shiftwidth=2
set softtabstop=2
set expandtab

" �C���f���g�Ƀn�[�h�^�u���g���ꍇ�̐ݒ�B
" �^�u������2�������̕��ŕ\������B
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" �}�b�s���O
"
" Y�̓����D��C�Ɠ����ɂ���
map Y y$

" <C-L>�Ō�����̋����\������������
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
