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

" Filer {{{

" }}}

" Appearance {{{

  " カラースキーマ
  Plugin 'muquu/molokai'

  " ステータスラインをカッコよくする
  "Plugin 'Lokaltog/vim-powerline'
  "Plugin 'itchyny/lightline.vim'
  Plugin 'bling/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'

" }}}

call vundle#end()
filetype plugin indent on

" vim:set foldmethod=maker:
