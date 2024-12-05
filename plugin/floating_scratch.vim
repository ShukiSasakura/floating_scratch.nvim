" プラグインの二重読み込みを防止
if exists('g:floating_scratch')
  finish
endif
let g:floating_scratch = 1

lua require("floating_scratch")

" スクラッチバッファをフローティングウィンドウで表示するコマンド
command! CreateFloatingScratch lua require("floating_scratch").create_floating_scratch()
