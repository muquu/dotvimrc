"-------------------------------------------------------------------------------
" ステータスライン StatusLine
"-------------------------------------------------------------------------------
set laststatus=2 " 常にステータスラインを表示

"カーソルが何行目の何列目に置かれているかを表示する
set ruler

" lightline.vim の設定
"source ~/dotvimrc/.vimrc.statusline.lightline

" vim-powerlineの設定
"let g:Powerline_symbols = 'fancy'
" source ~/dotfiles/.vimrc.statusline.powerline

"let g:airline_powerlilne_fonts = 1
let g:airline_theme = "wombat"

"自動的に QuickFix リストを表示する
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickfixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin

" function! GetB()
"   let c = matchstr(getline('.'), '.', col('.') - 1)
"   let c = iconv(c, &enc, &fenc)
"   return String2Hex(c)
" endfunction

" help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
" func! Nr2Hex(nr)
"   let n = a:nr
"   let r = ""
"   while n
"     let r = '0123456789ABCDEF'[n % 16] . r
"     let n = n / 16
"   endwhile
"   return r
" endfunc

" The function String2Hex() converts each character in a string to a two
" character Hex string.
" func! String2Hex(str)
"   let out = ''
"   let ix = 0
"   while ix < strlen(a:str)
"     let out = out . Nr2Hex(char2nr(a:str[ix]))
"     let ix = ix + 1
"   endwhile
"   return out
" endfunc

" vim起動中はtmuxを隠す
" if !has('gui_running') && $TMUX !=# ''
"   augroup Tmux
"     autocmd!
"     au VimEnter,FocusGained * silent !tmux set status off
"     au VimLeave,FocusLost * silent !tmux set status on
"   augroup END
" endif
" nmap <silent> <C-z> :!tmux set status on<CR>:suspend<CR>
"command! Tu silent :!tmux set status

