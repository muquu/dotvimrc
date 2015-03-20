" vunlde.vimで管理してるpluginを読み込む

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


" Edit {{{

  "コメント
  Plugin 'tomtom/tcomment_vim'


  " vimからGit操作する
  Plugin 'tpope/vim-fugitive'

  " vim上でgit diff表示
  "NeoBundle 'airblade/vim-gitgutter'


" }}}

" Filer and Unite {{{

  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
  Plugin 'ctrlpvim/ctrlp.vim'

  " Dirvish is to dired as ed is to vi
  Plugin 'justinmk/vim-dirvish'

  " バッファ管理
  "Plugin 'fholgado/minibufexpl.vim'

  " Unite
  Plugin 'Shougo/unite.vim'

" }}}

" Appearance {{{

  " カラースキーマ
  Plugin 'muquu/molokai'

  " ステータスラインをカッコよくする
  "Plugin 'Lokaltog/vim-powerline'
  "Plugin 'itchyny/lightline.vim'
  Plugin 'bling/vim-airline'

" }}}

call vundle#end()
filetype plugin indent on
