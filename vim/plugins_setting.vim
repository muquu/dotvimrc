"-------------------------------------------------------------------------------
" プラグインごとの設定 Plugins
"-------------------------------------------------------------------------------

"------------------------------------
" YankRing.vim
"------------------------------------
" Yankの履歴参照
nmap ,y ;YRShow<CR>
let g:yankring_zap_keys = ""

"------------------------------------
" MiniBufExplorer
"------------------------------------
" let g:miniBufExplMapWindowNavVim=1 "hjklで移動
" let g:miniBufExplSplitBelow=0  " Put new window above
" let g:miniBufExplMapWindowNavArrows=1
" let g:miniBufExplMapCTabSwitchBufs=1
" let g:miniBufExplModSelTarget=1
" let g:miniBufExplSplitToEdge=1
" let g:miniBufExplMaxSize = 10
" let g:miniBufExplorerMoreThanOne = 10

":MtでMiniBufExplorerの表示トグル
" nnoremap <Leader>mt :<C-u>:TMiniBufExplorer<CR>

"------------------------------------
" Align
"------------------------------------
" Alignを日本語環境で使用するための設定
let g:Align_xstrlen = 3

"------------------------------------
" tabular
"------------------------------------
vmap t :Tab /

"------------------------------------
" NERD_commenter.vim
"------------------------------------
" コメントの間にスペースを空ける
" let NERDSpaceDelims = 1
"<Leader>xでコメントをトグル(NERD_commenter.vim)
" map <Leader>x, c<space>
""未対応ファイルタイプのエラーメッセージを表示しない
" let NERDShutUp=1

" ------------------------------------
" grep.vim
"------------------------------------
" 検索外のディレクトリ、ファイルパターン
let Grep_Skip_Dirs = '.svn .git .hg'
let Grep_Skip_Files = '*.bak *~'
-
"------------------------------------
" surround.vim
"------------------------------------
" s, ssで選択範囲を指定文字でくくる
nmap s <Plug>Ysurround
nmap ss <Plug>Yssurround
let g:surround_{char2nr('e')} = "begin \r end"
let g:surround_{char2nr('d')} = "do \r end"
let g:surround_{char2nr("-")} = ":\r"

"------------------------------------
" smartchr.vim
"------------------------------------
" inoremap <expr> = smartchr#loop('=', '==', '=>')
" inoremap <expr> . smartchr#loop('.',  '->', '=>')
"
" " 演算子の間に空白を入れる
" inoremap <buffer><expr> + smartchr#one_of(' + ', ' ++ ', '+')
" inoremap <buffer><expr> +=  smartchr#one_of(' += ')
" " inoremap <buffer><expr> - smartchr#one_of(' - ', ' -- ', '-')
" inoremap <buffer><expr> -=  smartchr#one_of(' -= ')
" " inoremap <buffer><expr> / smartchr#one_of(' / ', ' // ', '/')
" inoremap <buffer><expr> /=  smartchr#one_of(' /= ')
" inoremap <buffer><expr> * smartchr#one_of(' * ', ' ** ', '*')
" inoremap <buffer><expr> *=  smartchr#one_of(' *= ')
" inoremap <buffer><expr> & smartchr#one_of(' & ', ' && ', '&')
" inoremap <buffer><expr> % smartchr#one_of(' % ', '%')
" inoremap <buffer><expr> =>  smartchr#one_of(' => ')
" inoremap <buffer><expr> <-   smartchr#one_of(' <-  ')
" inoremap <buffer><expr> <Bar> smartchr#one_of(' <Bar> ', ' <Bar><Bar> ', '<Bar>')
" inoremap <buffer><expr> , smartchr#one_of(', ', ',')
" " 3項演算子の場合は、後ろのみ空白を入れる
" inoremap <buffer><expr> ? smartchr#one_of('? ', '?')
" " inoremap <buffer><expr> : smartchr#one_of(': ', '::', ':')

" " =の場合、単純な代入や比較演算子として入力する場合は前後にスペースをいれる。
" " 複合演算代入としての入力の場合は、直前のスペースを削除して=を入力
" inoremap <buffer><expr> = search('¥(&¥<bar><bar>¥<bar>+¥<bar>-¥<bar>/¥<bar>>¥<bar><¥) ¥%#', 'bcn')? '<bs>= '  : search('¥(*¥<bar>!¥)¥%#', 'bcn') ? '= '  : smartchr#one_of(' = ', ' == ', '=')

" " 下記の文字は連続して現れることがまれなので、二回続けて入力したら改行する
" inoremap <buffer><expr> } smartchr#one_of('}', '}<cr>')
" inoremap <buffer><expr> ; smartchr#one_of(';', ';<cr>')
" "()は空白入れる
" inoremap <buffer><expr> ( smartchr#one_of('( ')
" inoremap <buffer><expr> ) smartchr#one_of(' )')

" " if文直後の(は自動で間に空白を入れる
" inoremap <buffer><expr> ( search('¥<¥if¥%#', 'bcn')? ' (': '('

"------------------------------------
" Fugitive.vim
"------------------------------------
nnoremap <Space>gd :<C-u>Gdiff<Enter>
nnoremap <Space>gs :<C-u>Gstatus<Enter>
nnoremap <Space>gl :<C-u>Glog<Enter>
nnoremap <Space>ga :<C-u>Gwrite<Enter>
nnoremap <Space>gc :<C-u>Gcommit<Enter>
nnoremap <Space>gC :<C-u>Git commit --amend<Enter>
nnoremap <Space>gb :<C-u>Gblame<Enter>

"------------------------------------
" VTreeExplorer
"------------------------------------
" let g:treeExplVertical=1
"<Leader>t<Space>でディレクトリツリー表示
" noremap <Leader>t<Space> :VSTreeExplore<CR>
"分割したウィンドウのサイズ
" let g:treeExplWinSize=30

"------------------------------------
" DumbBuf.vim
"------------------------------------
"<Leader>b<Space>でBufferList
" let dumbbuf_hotkey = '<Leader>b<Space>'
" let dumbbuf_mappings = {
"     \ 'n': {
"         \'<Esc>': { 'opt': '<silent>', 'mapto': ':<C-u>close<CR>' }
"     \}
" \}
" let dumbbuf_single_key  = 1
" let dumbbuf_updatetime  = 1    " &updatetimeの最小値
" let dumbbuf_wrap_cursor = 0
" let dumbbuf_remove_marked_when_close = 1

"------------------------------------
" vim-indent-guides
"------------------------------------
nnoremap <silent> <Space>id :<C-u>IndentGuidesToggle<Enter>
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 4
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
if 'dark' == &background
    hi IndentGuidesOdd  ctermbg=black
    hi IndentGuidesEven ctermbg=darkgrey
else
    hi IndentGuidesOdd  ctermbg=white
    hi IndentGuidesEven ctermbg=lightgrey
endif

"------------------------------------
" gundo.Vim
"------------------------------------
" nmap U :<C-u>GundoToggle<CR>

"------------------------------------
" taglist.Vim
"------------------------------------
" 関数一覧
set tags=tags
"set tags+=~/.tags
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1               " 現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             " taglistのウィンドーが最後のウィンドーならばVimを閉じる
" let Tlist_Use_Right_Window = 1            " 右側でtaglistのウィンドーを表示
let Tlist_Enable_Fold_Column = 1          " 折りたたみ
" let Tlist_Auto_Open = 1                   " 自動表示
let Tlist_Auto_Update = 1
let Tlist_WinWidth = 30
map <silent> <leader>tl :Tlist<CR>        " taglistを開くショットカットキー
" nmap <F7> :CMiniBufExplorer<CR>:TrinityToggleTagList<CR>:TMiniBufExplorer<CR>
" nmap <Leader>tl :CMiniBufExplorer<CR>:TrinityToggleTagList<CR>:TMiniBufExplorer<CR>

"------------------------------------
" Srcexp
"------------------------------------
" [Srcexpl] tagsを利用したソースコード閲覧・移動補助機能
" let g:SrcExpl_UpdateTags    = 1         " tagsをsrcexpl起動時に自動で作成（更新）
" let g:SrcExpl_RefreshTime   = 0         " 自動表示するまでの時間(0:off)
" let g:SrcExpl_WinHeight     = 9         " プレビューウインドウの高さ
" let g:SrcExpl_RefreshMapKey = "<Space>" " 手動表示のMAP
" let g:SrcExpl_GoBackMapKey  = "<C-b>"   " 戻る機能のMAP
" Source Explorerの機能ON/OFF
" nmap <F8> :CMiniBufExplorer<CR>:SrcExplToggle<CR>:TMiniBufExplorer<CR>

"------------------------------------
" open-blowser.vim
"------------------------------------
" カーソル下のURLをブラウザで開く
nmap <Leader>fu <Plug>(openbrowser-open)
vmap <Leader>fu <Plug>(openbrowser-open)
" カーソル下のキーワードをググる
nnoremap <Leader>fs :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

"------------------------------------
" vim-browser-reload-linux
"------------------------------------
nnoremap <Leader>rl :ChromeReloadStart<CR>
nnoremap <Leader>Rl :ChromeReloadStop<CR>

"------------------------------------
" operator-camelize.vim
"------------------------------------
" camel-caseへの変換
map <Leader>u <Plug>(operator-camelize)
map <Leader>U <Plug>(operator-decamelize)

"------------------------------------
" operator-replace.vim
"------------------------------------
" _wなどでYankしてるもので置き換える
map _ <Plug>(operator-replace)

"------------------------------------
" smartword.vim
"------------------------------------
noremap ,w  w
noremap ,b  b
noremap ,e  e
noremap ,ge  ge

map W  <Plug>(smartword-w)
map B  <Plug>(smartword-b)
map E  <Plug>(smartword-e)
map ge  <Plug>(smartword-ge)


"------------------------------------
" camelcasemotion.vim
"------------------------------------

" <Shift-wbe>でCameCaseやsnake_case単位での単語移動
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
" text-objectで使用できるように
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie

"------------------------------------
" vimshell
"------------------------------------
let bundle = neobundle#get('vimshell')
function! bundle.hooks.on_source(bundle)

  let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
  " let g:vimshell_right_prompt = 'vimshell#vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
  let g:vimshell_enable_smart_case = 1

  if has('win32') || has('win64')
    " Display user name on Windows.
    let g:vimshell_prompt = $USERNAME."% "
  else
    " Display user name on Linux.
    let g:vimshell_prompt = $USER."% "

    call vimshell#set_execute_file('bmp,jpg,png,gif', 'gexe eog')
    call vimshell#set_execute_file('mp3,m4a,ogg', 'gexe amarok')
    let g:vimshell_execute_file_list['zip'] = 'zipinfo'
    call vimshell#set_execute_file('tgz,gz', 'gzcat')
    call vimshell#set_execute_file('tbz,bz2', 'bzcat')
  endif

  function! g:my_chpwd(args, context)
    call vimshell#execute('echo "chpwd"')
  endfunction
  function! g:my_emptycmd(cmdline, context)
    call vimshell#execute('echo "emptycmd"')
    return a:cmdline
  endfunction
  function! g:my_preprompt(args, context)
    call vimshell#execute('echo "preprompt"')
  endfunction
  function! g:my_preexec(cmdline, context)
    call vimshell#execute('echo "preexec"')

    if a:cmdline =~# '^\s*diff\>'
      call vimshell#set_syntax('diff')
    endif
    return a:cmdline
  endfunction

  autocmd FileType vimshell
        \ call vimshell#altercmd#define('g', 'git')
        \| call vimshell#altercmd#define('i', 'iexe')
        \| call vimshell#altercmd#define('l', 'll')
        \| call vimshell#altercmd#define('ll', 'ls -la')
        \| call vimshell#hook#set('chpwd', ['g:my_chpwd'])
        \| call vimshell#hook#set('emptycmd', ['g:my_emptycmd'])
        \| call vimshell#hook#set('preprompt', ['g:my_preprompt'])
        \| call vimshell#hook#set('preexec', ['g:my_preexec'])

endfunction
unlet bundle

command! Vs :VimShell

"------------------------------------
" unite.vim
"------------------------------------
" The prefix key.
nnoremap [unite] <Nop>
nmap f [unite]

nnoremap <silent> [unite]u     :<C-u>Unite -auto-preview<Space>

" 全部乗せ
nnoremap <silent> [unite]a     :<C-u>UniteWithCurrentDir -auto-preview -buffer-name=files buffer file_mru bookmark file<CR>
" ファイル一覧
nnoremap <silent> [unite]f     :<C-u>Unite -auto-preview -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b     :<C-u>Unite -auto-preview buffer<CR>
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

let bundle = neobundle#get('unite.vim')
function! bundle.hooks.on_source(bundle)

  autocmd FileType unite call s:unite_my_settings()
  function! s:unite_my_settings()
    " Overwrite settings.

    " ESCキーを2回押すと終了する
    nmap <buffer> <ESC>      <Plug>(unite_exit)
    nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
    imap <buffer> jj      <Plug>(unite_insert_leave)
    "nnoremap <silent><buffer> <C-k> :<C-u>call unite#mappings#do_action('preview')<CR>
    imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

    " ウィンドウを分割して開く
    nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')
    inoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')

    " ウィンドウを縦に分割して開く
    nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
    inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  endfunction

  let g:unite_enable_start_insert = 0
  let g:unite_source_file_mru_limit = 200
  let g:unite_enable_split_vertically = 1
  let g:unite_source_grep_max_candidates = 200
  let g:unite_source_grep_default_opts = "-HnEi"
        \ . " --exclude='*.svn*'"
        \ . " --exclude='*.log*'"
        \ . " --exclude='*tmp*'"
        \ . " --exclude-dir='tmp'"
        \ . " --exclude-dir='log'"
        \ . " --exclude-dir='vendor'"
        \ . " --exclude-dir='CVS'"
        \ . " --exclude-dir='.svn'"
        \ . " --exclude-dir='.git'"

endfunction

" unite-plugins
cnoremap UH Unite help<Enter>
cnoremap UO Unite outline<Enter>

"------------------------------------
" quickrun.vim
"------------------------------------
let g:quickrun_config = {}
" let g:quickrun_config._ = {'runner' : 'vimproc'}
let g:quickrun_config.coffee = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
let g:quickrun_config.c = {
      \   'type': 'c/gcc',
      \   'command': 'gcc',
      \   'exec': ['%c %o %s -o %s:p:r -lm', '%s:p:r %a'],
      \   'tempfile': '%{tempname()}.c',
      \   'hook/sweep/files': '%S:p:r',
      \   'cmdopt': '-std=c99 -Wall',
      \   'args': '%{input("argv> ")}',
      \ }
let g:quickrun_config.tex = {
      \   'command' : 'platex',
      \   'exec': ['%c -kanji=euc %s', 'dvipdfmx -o %s:r.pdf %s:r.dvi']
      \ }
let g:quickrun_config.java = {
      \   'command' : 'ant',
      \   'exec': ['%c']
      \ }

"------------------------------------
" Pydiction
"------------------------------------
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"------------------------------------
" Syntastic
"------------------------------------
" エラー行をsignで表示する
let g:syntastic_enable_signs = 1
" 可能ならhighligt表示する
let g:syntastic_enable_highlighting = 1
" Ignore reStructuredText
let g:syntastic_ignore_files = ['\.rst$']

"------------------------------------
" toggle.vim
"------------------------------------
" imap <C-A> <Plug>ToggleI
" nmap <C-A> <Plug>ToggleN
" vmap <C-A> <Plug>ToggleV

let g:toggle_pairs = { 'and':'or', 'or':'and', 'if':'unless', 'unless':'if', 'yes':'no', 'no':'yes', 'enable':'disable', 'disable':'enable', 'pick':'reword', 'reword':'fixup', 'fixup':'squash', 'squash':'edit', 'edit':'exec', 'exec':'pick' }

"------------------------------------
" NERDTree.vim
"------------------------------------
" 引数なしでvimを開いたらNERDTreeを起動、引数ありならNERDTreeは起動しない
" 最後にnerdtreeだけ残っていたら自動終了
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 20
nnoremap <Leader>nt :<C-u>NERDTreeToggle<CR>
nnoremap <Leader>nf :<C-u>NERDTreeFind<CR>

"------------------------------------
" zen-cording
"------------------------------------
let g:user_zen_settings = {
\   'lang' : 'ja',
\}

"------------------------------------
" vim-ref
"------------------------------------
let g:ref_refe_cmd = expand('~/.vim/ref/ruby-refe/refe-1_9_2')
let g:ref_ri_cmd = expand('~/.rbenv/versions/1.9.3-p194/bin/ri')
autocmd FileType ruby,eruby,ruby.rspec nmap <buffer>K :<C-U>Ref refe <Space><C-R><C-W><CR>
autocmd User Rails nmap <buffer>KK :<C-U>Ref ri <Space><C-R><C-W><CR>

"------------------------------------
" Gist
"------------------------------------
let g:gist_show_privates = 1
nnoremap <Leader>gi :Gist<CR>
nnoremap <Leader>gp :Gist -p<CR>
nnoremap <Leader>ge :Gist -e<CR>
nnoremap <Leader>gs :Gist -s <Space><C-R><C-W><CR>
nnoremap <Leader>gd :Gist -d<CR>
nnoremap <Leader>gl :Gist -l<CR>

"------------------------------------
" neosnippets
"------------------------------------
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets,~/dotfiles/snippets'
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"------------------------------------
" vim-ibus
"------------------------------------
" inoremap <silent> <Esc> <Esc>:<C-u>call ibus#disable()<CR>
" inoremap <silent> <C-c> <Esc>:<C-u>call ibus#disable()<CR>

"------------------------------------
" easy-mosion
"------------------------------------
" ホームポジションに近いキーを使う
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 「,」 + 何かにマッピング
let g:EasyMotion_leader_key="<Leader>"
" 1 ストローク選択を優先する
let g:EasyMotion_grouping=1
" カラー設定変更
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"------------------------------------
" ctrlp
"------------------------------------
" nnoremap <Leader>p :<C-U>CtrlP<CR>
"
" let bundle = neobundle#get('ctrlp.vim')
" function! bundle.hooks.on_source(bundle)
"   let g:ctrlp_clear_cache_on_exit = 1
"   let g:ctrlp_lazy_update = 1
"   let g:ctrlp_regexp = 1
"   let g:ctrlp_show_hidden = 1
"   let g:ctrlp_use_caching = 1
"   let g:ctrlp_custom_ignore = {
"         \ 'dir':  '\.\(hg\|git\|sass-cache\|svn|\~\)$',
"         \ 'file': '\.\(dll\|exe\|gif\|jpg\|png\|psd\|so\|woff\)$' }
" endfunction
" unlet bundle

"------------------------------------
" Syntastic
"------------------------------------
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons=1
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:syntastic_loc_list_height=3
"let g:syntastic_quiet_messages = {'level': 'warnings'}

let g:syntastic_mode_map = {
      \ 'mode'              : 'active',
      \ 'active_filetypes'  : [],
      \ 'passive_filetypes' : ["html"],
      \}

"------------------------------------
" vim-gitgutter
"------------------------------------
let g:gitgutter_enabled = 0
nnoremap <Leader>ggt :<C-u>GitGutterToggle<CR>
nnoremap <Leader>ggn :<C-u>GitGutterNextHunk<CR>
nnoremap <Leader>ggp :<C-u>GitGutterPrevHunk<CR>

"------------------------------------
" vim-colors-solarized
"------------------------------------
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_italic=0
set background=dark
"set background=light

"------------------------------------
" eregex.vim
"------------------------------------
let g:eregex_default_enable = 0
nnoremap <leader>/ :call eregex#toggle()<CR>

