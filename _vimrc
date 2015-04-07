set nocompatible
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	call neobundle#end()
endif

"入力補完機能
NeoBundle 'Shougo/neocomplcache'

"Ctrl+P:バッファ Ctrl+N:カレントディレクトリ Ctrl+Z:最近のファイル
NeoBundle 'Shougo/unite.vim'

"最近使ったファイル
NeoBundle 'Shougo/neomru.vim'

":Ref refe puts 辞書が見られる
NeoBundle 'thinca/vim-ref'

"true/false の確認
NeoBundle 'thinca/vim-quickrun'

"Rils 自動化
NeoBundle 'tpope/vim-rails'

"Ruby end 自動化
NeoBundle 'tpope/vim-endwise'

"Ctrl+-x2 コメントアウト
NeoBundle 'tomtom/tcomment_vim'

":NEDTree でエクスプローラー風表示
NeoBundle 'scrooloose/nerdtree'

"自動閉じ括弧
NeoBundle 'Townk/vim-autoclose'

"HTML 楽々
NeoBundle 'mattn/emmet-vim'

"grep 楽々
NeoBundle 'grep.vim'

filetype plugin indent on

"タブが対応する空白数
set tabstop=2
set softtabstop=2
set shiftwidth=2

"タブを空白に変換
set expandtab

"backup,swapファイルを作らない
set nobackup
set noswapfile

"コマンドラインの行数
set cmdheight=2

"ステータスの表示
set laststatus=2

" ステータス行に表示させる情報の指定
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P]']'}

"入力中のコマンド表示
set showcmd

"保存する履歴数
set history=50

"検索で大文字小文字無視
set ignorecase

"検索で大文字小文字無視
set smartcase

"検索最後まで行ったら最初から検索
set wrapscan

"検索結果のハイライト表示
set hlsearch

"検索ワードの数文字で検索
set incsearch

"行番号表示
"set number

"カーソルの位置表示
set ruler

"不可視文字の表示（行末、タブ）
set list
set listchars=tab:>-,trail:-,eol:$

"ファイルパスの表示
set title

"対応する括弧の表示
set showmatch

"構成毎に文字色変更
syntax on


highlight Comment ctermfg=LightCyan

"行を折り返して表示
set wrap

colorscheme elflord

""""""""""""""""""""""""""""""
" Unit.vimの設定
"""""""""""""""""""""""""""""""
" 入力モードで開始する
 let g:unite_enable_start_insert=1
" バッファ一覧
 noremap <C-P> :Unite buffer<CR>
" ファイル一覧
 noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
 noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
 noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
 au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split') 
 " ウィンドウを縦に分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
 au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
 " ESCキーを2回押すと終了する
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
"""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
 " 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split') 
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split') 
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
"""""""""""""""""""""""""""""""
