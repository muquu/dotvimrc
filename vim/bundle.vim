" neobundle.vimで管理してるpluginを読み込む

" Initialize {{{

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" }}}

" Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
" ------------------------------------------------------------------------------

" Edit {{{

  "コメント
  NeoBundle 'tomtom/tcomment_vim'

  " vimからGit操作する
  NeoBundle 'tpope/vim-fugitive'

  " surround
  NeoBundle 'tpope/vim-surround'

  " vim上でgit diff表示
  NeoBundle 'airblade/vim-gitgutter'

  " 補完
  NeoBundle 'Shougo/neocomplete.vim'

  " スニペット
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'

" }}}

" Filer, Utility and Unite {{{

  " Unite
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/unite-outline'

  " Powerfull shell implemented by vim
  NeoBundle 'Shougo/vimshell.vim'

  " Powerful file explorer implemented by Vim script
  NeoBundle 'Shougo/vimfiler.vim'

  " MRU plugin includes unite.vim MRU sources
  NeoBundle 'Shougo/neomru.vim'

  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
  NeoBundle 'ctrlpvim/ctrlp.vim'

  " Dirvish is to dired as ed is to vi
  "NeoBundle 'justinmk/vim-dirvish'

  " vimproc
  NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \   },
  \ }

  " quickrun
  NeoBundle 'thinca/vim-quickrun'

  " 汎用的なquickrun-hook
  "NeoBundle 'osyo-manga/shabadou.vim'

  " Async syntax check plugin.
  "NeoBundle 'osyo-manga/vim-watchdogs'

  " Syntax checking
  "NeoBundle 'scrooloose/syntastic'

  " ヘッダファイルとソースファイルを切り替える
  NeoBundle 'kana/vim-altr'

" }}}

" Appearance {{{

  " カラースキーマ
  NeoBundle 'muquu/molokai'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'sheerun/vim-wombat-scheme'

  " ステータスラインをカッコよくする
  "NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'

" }}}

" ------------------------------------------------------------------------------
" Bundles end

" Finalize {{{

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" }}}
