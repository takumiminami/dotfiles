" setting
set fenc=utf-8
set nobackup
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" disable beep sounds
set noerrorbells


" visual
" visualize row number
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" カーソルの回り込みができるようになる
set whichwrap=b,s,h,l,[,],<,>
" visualize beep sounds
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" Tab系
" 不可視文字を可視化(タブが「>-」と表示される)
set list listchars=tab:>-
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4
set expandtab
set smartindent


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" coding color setting
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on


hi LineNr ctermbg=0 ctermfg=7
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

" for spell checking
"set spelllang=en,cjk
"
"fun! s:SpellConf()
"  redir! => syntax
"  silent syntax
"  redir END
"
"  set spell
"
"  if syntax =~? '/<comment\>'
"    syntax spell default
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
"  else
"    syntax spell toplevel
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
"  endif
"
"  syntax cluster Spell add=SpellNotAscii,SpellMaybeCode
"endfunc
"
"augroup spell_check
"  autocmd!
"  autocmd BufReadPost,BufNewFile,Syntax * call s:SpellConf()
"augroup END
"
"" トリガーがONになっていたら set spell を行う
"function! s:set_spell()
"    if get(b:, "set_spell_trigger", 0) && &modifiable
"        let &spell = 1
"        unlet b:set_spell_trigger
"    endif
"endfunction
"
"" バッファの内容が変更されるか保存された時にスペルチェックを行う
"" ただし、実際に有効になるのは CursorHold のタイミング
"" また、カーソル移動を行えば無効にする
"augroup my-setspell
"    autocmd!
"    autocmd BufWritePost,TextChanged,TextChangedI * let b:set_spell_trigger = 1
"    autocmd CursorHold  * call s:set_spell()
""    autocmd CursorMoved * if &spell | set nospell | endif
"augroup END

" executing python3 
nmap <F1> :!python3 % <ENTER>

" for fzf
set rtp+=/opt/homebrew/opt/fzf


