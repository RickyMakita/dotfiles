"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/ricky/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/ricky/.cache/dein')
  call dein#begin('/Users/ricky/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/ricky/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"""""""""""""""""""""""""""""""""
" settings
"""""""""""""""""""""""""""""""""
" jkをescに設定
inoremap jk <Esc>
" 行番号を表示する
set number
" 改行時に自動でインデントを挿入
set autoindent
" ファイルが外部で変更された時に自動で読み込む
set autoread
" バックスペースの影響範囲を設定する
set backspace=indent,eol,start
" 未保存ファイルの終了時に保存確認
set confirm
" 文字コードを設定する
set encoding=utf8
" タブの代わりにスペースを挿入する
set expandtab
" ファイル変更中に他のファイルを表示可能にする
set hidden
" 検索結果をハイライト表示する
set hlsearch
" 大文字と小文字を区別せず表示する
set ignorecase
" インクリメンタルサーチを有効にする
set incsearch
" ステータスバーを常に表示する
set laststatus=2
" 不可視文字を表示する
set list
" 不可視文字の表示方法を設定する
set listchars=eol:-
" マウスを有効にする
set mouse=a
" ファイル上書き時にバックアップを取らない
set nobackup
set nowritebackup
" スワップファイルを作成しない
set noswapfile
" ルーラーを表示する
set ruler
"　インデントでずれる幅を設定する
set shiftwidth=2
" 入力中のコマンドを表示する
set showcmd
" 対応するカッコを強調表示する
set showmatch
" タブバーを常に表示する
set showtabline=2
" 検索文字に大文字が含まれている場合は区別して検索する
set smartcase
" 改行入力業の末尾に合わせてインデントを増減する
set smartindent
" タブやバックスペースで処理するスペースの数を設定する
set softtabstop=2
" 新しいウィンドウを下/右に開く
set splitbelow
set splitright
" タブ幅を設定する
set tabstop=2
" 編集中のファイル名を表示する
set title
" ビープを無効にする
set visualbell t_vb=
" 行頭・行末の左右移動で行を移動する
set whichwrap=b,s,h,l,<,>,[,]
" コマンドラインモードでの補完を有効にする
set wildmenu
" コマンドラインモードでの補完方法を設定する
set wildmode=list:longest,full
" 行を折り返す
set wrap
" 検索時に最後まで移動したら最初に戻る
set wrapscan
" カラースキーム設定
set t_Co=256
syntax enable
colorscheme desert 
