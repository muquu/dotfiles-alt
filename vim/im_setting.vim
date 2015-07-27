" ----------------------------------------------------------
" インプットメソッドの設定
" ----------------------------------------------------------
" fcitx協調モード
" https://wiki.archlinux.org/index.php/Fcitx_%28%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87%29
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
" 挿入モードを抜けるときに半角英数にする
autocmd InsertLeave * call Fcitx2en()
" 挿入モードに切り替えた時全角かなにする
"autocmd InsertEnter * call Fcitx2zh()
