" NeoBundle.vimで管理してるpluginを読み込む
source ~/dotvimrc/vim/bundle.vim
" 基本設定
source ~/dotvimrc/vim/basic.vim
" StatusLine設定
source ~/dotvimrc/vim/statusline.vim
" インデント設定
source ~/dotvimrc/vim/indent.vim
" 表示関連
source ~/dotvimrc/vim/apperance.vim
" " 補完関連
source ~/dotvimrc/vim/completion.vim
" Tags関連
source ~/dotvimrc/vim/tags.vim
" 検索関連
source ~/dotvimrc/vim/search.vim
" 移動関連
source ~/dotvimrc/vim/moving.vim
" Color関連
source ~/dotvimrc/vim/colors.vim
" 編集関連
source ~/dotvimrc/vim/editing.vim
" エンコーディング関連
source ~/dotvimrc/vim/encoding.vim
" fcitx インプットメソッドの設定
if has('unix')
  source ~/dotvimrc/vim/im_setting.vim
endif
" GVim設定
if has('gui_running')
  source ~/dotvimrc/gvimrc
endif

" プラグイン設定
source ~/dotvimrc/plugin.vim

" ローカル設定
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
