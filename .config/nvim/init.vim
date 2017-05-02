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
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/neocomplcache')
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
" terminal modeでjkでコマンドモードに
tnoremap <silent> jk <C-\><C-n>
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
syntax on
colorscheme moneyforward
""""""""""""""""""""""""""""""""""""
" plugin settings
""""""""""""""""""""""""""""""""""""

" nerdtreeショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" Unite.vim
" insert modeで開始
let g:unite_enable_start_insert = 1

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \}

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
