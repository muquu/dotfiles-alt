" Vundle.vimで管理してるpluginを読み込む
source ~/dotfiles/vim/bundle.vim
" 基本設定
source ~/dotfiles/vim/basic.vim
" StatusLine設定
source ~/dotfiles/vim/statusline.vim
" インデント設定
source ~/dotfiles/vim/indent.vim
" 表示関連
source ~/dotfiles/vim/apperance.vim
" " 補完関連
source ~/dotfiles/vim/completion.vim
" Tags関連
source ~/dotfiles/vim/tags.vim
" 検索関連
source ~/dotfiles/vim/search.vim
" 移動関連
source ~/dotfiles/vim/moving.vim
" Color関連
source ~/dotfiles/vim/colors.vim
" 編集関連
source ~/dotfiles/vim/editing.vim
" エンコーディング関連
source ~/dotfiles/vim/encoding.vim
" fcitx インプットメソッドの設定
if has('unix')
  source ~/dotfiles/vim/im_setting.vim
endif
" GVim設定
if has('gui_running')
  source ~/dotfiles/gvimrc
endif

" プラグイン設定
source ~/dotfiles/plugin.vim

" ローカル設定
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
