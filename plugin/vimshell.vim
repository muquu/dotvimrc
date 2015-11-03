"
" vimshell
"

nnoremap <silent> <Leader>s :VimShell<CR>


" プロンプトの設定
let g:vimshell_prompt = "> "
let g:vimshell_secondary_prompt = ">>"
let g:vimshell_user_prompt = 'getcwd()'

" エイリアス設定ファイルの場所
let g:vimshell_vimshrc_path	= expand('~/dotvimrc/vimshrc')
