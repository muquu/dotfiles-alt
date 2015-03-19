" NeoBundle.vimで管理してるpluginを読み込む
source ~/dotfiles/vim/bundle
" 基本設定
source ~/dotfiles/vim/basic
" StatusLine設定
source ~/dotfiles/vim/statusline
" インデント設定
source ~/dotfiles/vim/indent
" 表示関連
source ~/dotfiles/vim/apperance
" " 補完関連
"source ~/dotfiles/vim/completion
" Tags関連
source ~/dotfiles/vim/tags
" 検索関連
source ~/dotfiles/vim/search
" 移動関連
source ~/dotfiles/vim/moving
" Color関連
source ~/dotfiles/vim/colors
" 編集関連
source ~/dotfiles/vim/editing
" エンコーディング関連
source ~/dotfiles/vim/encoding
" その他
source ~/dotfiles/vim/misc
" プラグインに依存するアレ
"source ~/dotfiles/vim/plugins_setting
" fcitx インプットメソッドの設定
source ~/dotfiles/vim/im_setting
" GVim設定
if has('gui_running')
  source ~/dotfiles/.gvimrc
endif
