
" ......................我佛慈悲...................... 
"                       _oo0oo_ 
"                      o8888888o 
"                      88" . "88 
"                      (| -_- |) 
"                      0\  =  /0 
"                    ___/`---'\___ 
"                  .' \\|     |// '. 
"                 / \\|||  :  |||// \ 
"                / _||||| -卍-|||||- \ 
"               |   | \\\  -  /// |   | 
"               | \_|  ''\---/''  |_/ | 
"               \  .-\__  '-'  ___/-. / 
"             ___'. .'  /--.--\  `. .'___ 
"          . '''<  `.___\_<|>_/___.' >' ''. 
"         | | :  `- \`.;`\ _ /`;.`/ - ` : | | 
"         \  \ `_.   \_ __\ /__ _/   .-` /  / 
"     =====`-.____`.___ \_____/___.-`___.-'===== 
"                       `=---=' 
"  


set nocompatible              " vim是vi的扩展, vim工作的时候不需要考虑对vi的兼容
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax on                     " 打开语法高亮
set nu                        " 显示行号
set relativenumber            " 以当前为1

" nnoremap意思是普通模式(normal mode)下生效
nnoremap <F2> :set norelativenumber<CR>
nnoremap <F3> :set relativenumber<CR>

:set foldmethod=indent
" zc折叠, zo展开折叠

set showcmd
set guicursor=
set hlsearch
set incsearch
set smartcase
set tabstop=2
set autochdir
set noerrorbells
set shiftwidth=2
set autoindent
set cindent
set fdm=indent
set foldlevelstart=99
set scrolloff=5
set expandtab
" set list lcs=tab:\|\ 
exec "nohlsearch"
let mapleader = " "

" 不显示高亮搜索内容
noremap <LEADER><CR> :nohlsearch<CR>

" 快捷替换
noremap \ :%s/
" 嵌套窗口
noremap <LEADER>rt :FloatermNew<CR>
noremap <LEADER>rth :FloatermHide<CR>
noremap <LEADER>rts :FloatermShow<CR>

noremap <LEADER>r :source $MYVIMRC<CR>
nnoremap <C-j> 5jzz
nnoremap <C-k> 5kzz
nnoremap J jzz
nnoremap K kzz
nnoremap DD dd

" 快捷复制光标之后的内容
vnoremap Y "+y

nnoremap } ]}
nnoremap { [{
noremap <LEADER>s :split<CR>
noremap <LEADER>v :vsplit<CR>
nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>
nnoremap <LEADER>t :tabnew<CR>
nnoremap <LEADER>- :tabc<CR>
nnoremap <LEADER>. :tabm+<CR>
nnoremap <LEADER>, :tabm-<CR>
nnoremap ]] ]]zz
nnoremap [[ [[zz
noremap <LEADER>' :tabnext<CR>
noremap <LEADER><LEADER> :tabnext<CR>
noremap <LEADER>; :tabprevious<CR>
nnoremap <C-w> <C-w>w
nnoremap <C-f> <C-f>M
nnoremap <C-b> <C-b>M
" nnoremap gr :reg<CR>
" nnoremap S "_d
nnoremap 0 ^
nnoremap ^ 0
nnoremap Q :q<CR>
nnoremap Z :Git
nnoremap // /\<\><left><left>
" open the header in a split window
" nnoremap U :vsplit<CR><C-w>wgg2j$h:YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <C-s> <Esc>/<++><CR>:nohlsearch<CR>4s
"inoremap <tab> <tab>
cnoremap xx %s/\s*$//<CR>:nohlsearch<CR>
cnoremap RRR g/^/m0<CR>:nohlsearch<CR>
" cnoremap CP :CtrlP 
cnoremap vh vertical help 
nnoremap <CR> $
nnoremap <C-c> :w<CR>
nnoremap z<CR> <CR>
nnoremap * *Nzz
nnoremap # #Nzz
nnoremap zx %
nnoremap <LEADER>o o<Esc>k
nnoremap gp :tabe<CR><C-o>
nnoremap Td :Tabularize /\d.*$<CR>
nnoremap T= :Tabularize /=<CR>
nnoremap T# :Tabularize /#<CR>
nnoremap T/ :Tabularize /\/\/<CR>
nnoremap TF :ClangFormat<CR>
nnoremap y( "zyf(%"Zyl
nnoremap d( dt(%x<C-o>x
nnoremap ^ vepyiw
nnoremap t ct;
nnoremap gj L
nnoremap gk H
nnoremap <C-t> :vsplit<CR><C-w>w:ter<CR>i
nnoremap <C-G> 2<C-G>
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
inoremap <C-F> <Right>
inoremap <C-B> <Left>
" cnoremap suw w !sudo tee %
nnoremap ga :Ack! <C-r><C-w> ../ <CR>
nnoremap gcc :e <c-r>%<c-h>cc<CR>
nnoremap gcl :set cursorline<CR>
nnoremap gncl :set nocursorline<CR>
nnoremap ;gp :GdbStart /home/muhao/pnd_ws/devel/lib/xpnd/xpnd_node<CR>
nnoremap ;gco :GdbStart /home/muhao/ws/control_ws/devel/lib/tc_node<CR>
nnoremap ;gcc :GdbClearBreakpoints

tnoremap <ESC> <c-\><c-n>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"how to install vim plug-in
"sudo apt install curl
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'connorholyday/vim-snazzy'

Plug 'nanotech/jellybeans.vim'

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'altercation/vim-colors-solarized'

Plug 'junegunn/seoul256.vim'

Plug 'gregsexton/gitv', {'on': ['Gitv']}

Plug 'tpope/vim-fugitive'

Plug 'mileszs/ack.vim'

Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'

Plug 'iamcco/mathjax-support-for-mkdp'

Plug 'SirVer/ultisnips'

Plug 'mhinz/vim-startify'

Plug 'machakann/vim-highlightedyank'

Plug 'kshenoy/vim-signature'

Plug 'airblade/vim-gitgutter'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mbbill/undotree'

Plug 'itchyny/vim-cursorword'

Plug 'majutsushi/tagbar'

Plug 'rhysd/vim-clang-format'

Plug 'kana/vim-operator-user'

Plug 'Yggdroot/indentLine'

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'tomasr/molokai'

Plug 'flazz/vim-colorschemes'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'gennaro-tedesco/nvim-peekup'

Plug 'junegunn/vim-peekaboo'

Plug 'easymotion/vim-easymotion'

Plug 'hiberabyss/NeovimGdb'

Plug 'kana/vim-exjumplist'

Plug 'arecarn/vim-selection'

Plug 'arecarn/vim-crunch'

Plug 'lambdalisue/suda.vim'

" Plug 'junegunn/fzf'

" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

" Always load the vim-devicons as the very last one
Plug 'ryanoasis/vim-devicons'

"Plug 'davidhalter/jedi-vim'

" 在vim里面嵌套终端
Plug 'voldikss/vim-floaterm'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" 在浏览器中预览markdown文件
Plug 'iamcco/markdown-preview.nvim', {'do' : 'cd app && yarn install'}

" 效率工具
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'haringsrob/nvim_context_vt'
" 括号后提示所属条件, 需要先装treesitter 才生效

" 代码格式
Plug 'sbdchd/neoformat'




call plug#end()

"pluged config
" ############################################################################
"
"      NERDtree : 
"
" ############################################################################
"NERDtree config
" 空格 + tab  ==>  显示或者不显示树
map <LEADER><tab> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" 在目录栏显示隐藏文件
let NERDTreeShowHidden=1

"hi Normal ctermfg=252 ctermbg=none

" color scheme
" let g:SnazzyTransparent = 0
" colorscheme snazzy

let g:jellybeans_use_term_italics = 1
let g:jellybeans_overrides = {
      \    'Todo': { 'guifg': 'f0f000', 'guibg': '151515',
      \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
      \              'attr': 'bold' },
      \    'Comment': { 'guifg': '666666' },
      \		 'Search' : { 'guifg': '151515', 'guibg': 'a9a9a9',
      \              'attr': 'bold' },
      \    'ErrorMsg': { 'guifg': 'ff0000', 'guibg': '151515',
      \              'attr': 'bold' },
      \    'SignColumn': { 'guifg': 'f0f000', 'guibg': '151515', 'attr': 'bold'},
      \    'DiffAdd': { 'guifg': '87ff5f' },
      \    'DiffDelete': { 'guifg': 'ff0000' },
      \    'DiffChange': { 'guifg': 'f0f000' },
      \    'SpellBad': { 'guibg': '151515', 'attr': 'italic' },
      \    'CursorLine': { 'guibg': '151515', 'attr': 'underline' },
      \    'CursorColumn': { 'guibg': '444444' },
      \}

" \    'SpellBad': { 'guifg': 'ffff00', 'guibg': '151515', 'attr': 'italic' },

colorscheme jellybeans

" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" syntax enable
" colorscheme dracula

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
" let g:seoul256_background = 233
" colo seoul256
"
" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
"let g:seoul256_background = 256
" colo seoul256

" autopairs
let g:AutoPairsShortcutFastWrap = '<C-z>'

" vim-markdown
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 2

" ==========================
" markdown preview nvim   ||
" ==========================
nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>MarkdownPreviewStop
imap <silent> <F9> <Plug>MarkdownPreviewStop
nmap <silent> <F10> <Plug>MarkdownPreviewToggle
imap <silent> <F10> <Plug>MarkdownPreviewToggle
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {}
      \ }
let g:mkdp_auto_start = 1  " 1自动打开  0 关闭自动打开
let g:mkdp_command_for_global = 1 " other files can be open
let g:mkdp_open_to_the_world = 1 " 0: 127.0.0.1, 1:0.0.0.0


"UltiSnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsSnippetDirectories=["/home/trunk/.config/nvim/plugged/ultisnips"]

" yank highlight
let g:highlightedyank_highlight_duration = 400

" vim-signature
let g:SignatureMap = {
      \ 'Leader'             :  "m",
      \ 'PlaceNextMark'      :  "m,",
      \ 'ToggleMarkAtLine'   :  "m.",
      \ 'PurgeMarksAtLine'   :  "m-",
      \ 'DeleteMark'         :  "dm",
      \ 'PurgeMarks'         :  "m<Space>",
      \ 'PurgeMarkers'       :  "m<BS>",
      \ 'GotoNextLineAlpha'  :  "']",
      \ 'GotoPrevLineAlpha'  :  "'[",
      \ 'GotoNextSpotAlpha'  :  "`]",
      \ 'GotoPrevSpotAlpha'  :  "`[",
      \ 'GotoNextLineByPos'  :  "]'",
      \ 'GotoPrevLineByPos'  :  "['",
      \ 'GotoNextSpotByPos'  :  "<C-l>",
      \ 'GotoPrevSpotByPos'  :  "<C-h>",
      \ 'GotoNextMarker'     :  "]-",
      \ 'GotoPrevMarker'     :  "[-",
      \ 'GotoNextMarkerAny'  :  "]=",
      \ 'GotoPrevMarkerAny'  :  "[=",
      \ 'ListBufferMarks'    :  "m/",
      \ 'ListBufferMarkers'  :  "m?"
      \ }
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1
let g:SignatureEnabledAtStartup = 1
nnoremap <LEADER>mm :SignatureToggle<CR>
nnoremap <LEADER>n :SignatureRefresh<CR>

" gitgutter
let g:gitgutter_enabled = 1
nnoremap <LEADER>g :GitGutterToggle<CR>
nnoremap <LEADER>l :GitGutterLineHighlightsToggle<CR>
set updatetime=100

" jedi-vim
"let g:jedi#completions_command = ~"<C-n>"
"let g:jedi#documentation_command = 0

" semshi
hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=grey40
"hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
"function! SemshiGoToRemap()
nmap - :Semshi goto name next<CR>
nmap _ :Semshi goto name prev<CR>
nnoremap <LEADER>1 :Semshi toggle<CR>
nmap <silent> <leader>2 :Semshi rename<CR>
nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>
nmap <silent> <leader>ff :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>
nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>
nmap <silent> <leader>e :Semshi error<CR>
nmap <silent> <leader>3 :Semshi goto error<CR>
"endfunction
"autocmd FileType python call SemshiGoToRemap()
"au BufRead *.py call SemshiGoToRemap()

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" undotree
let g:undotree_WindowLayout = 4
nnoremap gT :UndotreeToggle<CR>

" cursorword
let g:cursorword_delay=10
let g:cursorword=0
let b:cursorword=0

" tagbar
nmap gt :TagbarToggle<CR>
let g:tagbar_left = 1
"autocmd FileType c,cpp nested :TagbarOpen "c,c++文件自动打开tagbar

" nerdcommenter
let g:NERDRemoveExtraSpaces=1
let g:NERDSpaceDelims=1

" vim-clang-format
"  Available coding styles are llvm, google, chromium and mozilla
let g:clang_format#code_style="google"

let g:clang_format#style_options = {
      \ "AllowShortIfStatementsOnASingleLine" : "false",
      \ "AllowShortLoopsOnASingleLine" : "false",
      \ "AllowShortCaseLabelsOnASingleLine" : "false",
      \ "AllowShortBlocksOnASingleLine" : "false",
      \ "AlignTrailingComments" : "true",
      \ "DerivePointerAlignment" : "false",
      \ "PointerAlignment" : "Left",
      \ "MaxEmptyLinesToKeep" : "1",
      \ "Standard" : "C++11"}

" \ "BreakBeforeBraces" : "Custom",
" \ "BraceWrapping" : {"AfterControlStatement" : "true"},
" \ "SpacesBeforeTrailingComments" : "2",
" \ "AlignConsecutiveAssignments" : "true",

" indentLine
let g:indentLine_fileType = ['c', 'cpp', 'python', 'sh']
let g:indentLine_conceallevel = 2
" let g:indentLine_char = '┊'

set guifont=
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=0

" vim-peekaboo
let g:peekaboo_window = 'bo 30new'

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" nnoremap S s
" nmap f <Plug>(easymotion-overwin-f)
" nmap f <Plug>(easymotion-s2)
nmap f <Plug>(easymotion-overwin-f2)
nnoremap F f
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map L <Plug>(easymotion-lineforward)
map H <Plug>(easymotion-linebackward)
nmap <C-n> <Plug>(easymotion-repeat)
" omap t <Plug>(easymotion-tl)
" omap T <Plug>(easymotion-Tl)
" omap f <Plug>(easymotion-fl)
" omap F <Plug>(easymotion-Fl)
omap z <Plug>(easymotion-s)
let g:EasyMotion_keys='hklyuiopnmqwertzxcvbasdgjf;'

" exjumplist
nmap zG <Plug>(exjumplist-go-last)
nmap zg <Plug>(exjumplist-go-first)
nmap zn <Plug>(exjumplist-next-buffer)
nmap zp <Plug>(exjumplist-previous-buffer)

" vim-crunch
let g:crunch_user_variables = {'e': exp(1),  'pi':3.14159265359}

" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"   插件: 跳转
"   黄民航亲笔
" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
" neoclide/coc.nvim
" 启动vim自动安装coc.xxx语言插件
" coc-clangd = c++
let g:coc_global_extensions = ['coc-json','coc-css','coc-clangd','coc-cmake','coc-git','coc-yaml','coc-sh','coc-highlight','coc-markdownlint','coc-snippets','coc-emmet','coc-html','coc-jedi']
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
" 跳转到函数定义
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" 哪些地方调用了该函数  
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"


