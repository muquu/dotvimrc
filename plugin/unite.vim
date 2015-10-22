" -------------------------------------------------------------------
"  Uniteの設定
" -------------------------------------------------------------------
" The prefix key.
nnoremap [unite] <Nop>
nmap f [unite]

nnoremap <silent> [unite]u     :<C-u>Unite -auto-preview<Space>

" 全部乗せ
nnoremap <silent> [unite]a     :<C-u>UniteWithCurrentDir -auto-preview -buffer-name=files buffer file_mru bookmark file<CR>
" ファイル一覧
nnoremap <silent> [unite]f     :<C-u>Unite -auto-preview -buffer-name=files file<CR>
" バッファ一覧
"nnoremap <silent> [unite]b     :<C-u>Unite -auto-preview buffer<CR>
nnoremap <silent> [unite]b     :<C-u>Unite buffer<CR>
" 常用セット
nnoremap <silent> [unite]u     :<C-u>Unite -auto-preview buffer file_mru<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m     :<C-u>Unite -auto-preview file_mru<CR>
" 現在のバッファのカレントディレクトリからファイル一覧
nnoremap <silent> [unite]d     :<C-u>UniteWithBufferDir -auto-preview file<CR>
" bookmark
nnoremap <silent> <Space>b     :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]<C-b> :<C-u>Unite -auto-preview bookmark -buffer-name=bookmark<CR>
" grep
nnoremap <silent> [unite]gr    :<C-u>Unite -auto-preview grep:<CR>

" from basyura/unite-rails
nnoremap <silent> [unite]rm    :<C-u>Unite -auto-preview rails/model<CR>
nnoremap <silent> [unite]rc    :<C-u>Unite -auto-preview rails/controller<CR>
nnoremap <silent> [unite]rv    :<C-u>Unite -auto-preview rails/view<CR>
nnoremap <silent> [unite]rl    :<C-u>Unite -auto-preview rails/lib<CR>
nnoremap <silent> [unite]rj    :<C-u>Unite -auto-preview rails/javascript<CR>
nnoremap <silent> [unite]rs    :<C-u>Unite -auto-preview rails/spec<CR>

