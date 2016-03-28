"" GUI 用の設定
set lines=64 columns=150
set t_Co=256
"" 全角記号
set ambiwidth=double
"" フォント""
"set guifont=Ricty\ 12
"" カーソル点滅
set guicursor=a:blinkon0
"" ビープ音(消す)
set vb t_vb=
"set novb
"" ツールバー非表示
set guioptions-=T
"" 左右のスクロールバー非表示
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
"" 水平スクロールバー非表示
set guioptions-=b
"" メニューバー非表示
set guioptions-=m
"" カラースキーム
"" wombat
"colorscheme wombat
"" molokai
"colorscheme molokai
"" solarized
set background=dark
let g:solarized_italic=0
colorscheme solarized

if has('unix')
  set novb
  set guifont=Ricty\ for\ Powerline\ 12
endif

if has('win32')
  "set ffs=dos
  "set nolist
  " アンチエイリアスフォント
  "set guifont=Ubuntu_Mono_for_Powerline:h12:cANSI
  "set guifont=Anonymous_Pro_for_Powerline:h11:cANSI
  "set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  "set guifontwide=MeiryoKe_Console:h12:cANSI
  " ビットマップフォント
  set guifont=ProggyClean:h8:cANSI
  set guifontwide=ＭＳ_ゴシック:h10:cANSI
  source $VIMRUNTIME/delmenu.vim
  set langmenu=ja_jp.utf-8
  source $VIMRUNTIME/menu.vim
  let g:airline_powerline_fonts = 1
endif


" 個別のタブの表示設定をします
function! GuiTabLabel()
  " タブで表示する文字列の初期化をします
  let l:label = ''

  " タブに含まれるバッファ(ウィンドウ)についての情報をとっておきます。
  let l:bufnrlist = tabpagebuflist(v:lnum)

  " 表示文字列にバッファ名を追加します
  " パスを全部表示させると長いのでファイル名だけを使います 詳しくは help fnamemodify()
  let l:bufname = fnamemodify(bufname(l:bufnrlist[tabpagewinnr(v:lnum) - 1]), ':t')
  " バッファ名がなければ No title としておきます。ここではマルチバイト文字を使わないほうが無難です
  let l:label .= l:bufname == '' ? 'No title' : l:bufname

  " タブ内にウィンドウが複数あるときにはその数を追加します(デフォルトで一応あるので)
  let l:wincount = tabpagewinnr(v:lnum, '$')
  if l:wincount > 1
    let l:label .= '[' . l:wincount . ']'
  endif

  " このタブページに変更のあるバッファがあるときには '[+]' を追加します(デフォルトで一応あるので)
  for bufnr in l:bufnrlist
    if getbufvar(bufnr, "&modified")
      let l:label .= '[+]'
      break
    endif
  endfor

  " 表示文字列を返します
  return l:label
endfunction

" guitablabel に上の関数を設定します
" その表示の前に %N というところでタブ番号を表示させています
set guitablabel=%N:\ %{GuiTabLabel()}

