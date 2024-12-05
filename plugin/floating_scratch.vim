lua require("floating_scratch")

" スクラッチバッファをフローティングウィンドウで表示するコマンド
command! CreateFloatingScratch lua require("floating_scratch").create_floating_scratch()
