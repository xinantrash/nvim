" __  __                             _           
"|  \/  |_   _ _ __   ___  _____   _(_)_ __ ___  
"| |\/| | | | | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"| |  | | |_| | | | |  __/ (_) \ V /| | | | | | |
"|_|  |_|\__, |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"        |___/                                   



" Author: @XinanTrashBoi
" Want to hava a good coding experience.
" Hope I have a nice and sweet dream.


"================================================

call plug#begin('~/.config/nvim/plugged')

" Golang
"Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

"neovim dress
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
" Plug 'Styadev/HicusLine'
" Plug 'theniceboy/eleline.vim'
" Plug 'liuchengxu/eleline.vim'
Plug 'bling/vim-bufferline'
"Plug 'ajmwagar/vim-deus'
" Plug 'liuchengxu/space-vim-theme'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'rakr/vim-one'
"Plug 'mhartington/oceanic-next'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'arzg/vim-colors-xcode'
" Plug 'liuchengxu/space-vim-dark'
Plug 'rakr/vim-one'
" Plug 'kaicataldo/material.vim'
" Plug 'connorholyday/vim-snazzy'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sts10/vim-pink-moon'
" Plug 'skreek/skeletor.vim'

"Genreal Highlighter
" Plug 'jaxbot/semantic-highlight.vim'
" Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight


"aligned punctuation
Plug 'junegunn/vim-easy-align'

"auto pair braket
Plug 'jiangmiao/auto-pairs'

"complete the code
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"neovim theme gruvbox
"Plug 'morhetz/gruvbox'

"neovim theme molokai
"Plug 'tomasr/molokai'

"neovim theme yowish
" Plug 'kabbamine/yowish.vim'

"File navigation
" Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin'

"Undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

"startify
Plug 'mhinz/vim-startify'

"GOYO
Plug 'junegunn/goyo.vim'

"Comment a line
" Plug 'scrooloose/nerdcommenter' " in <space>r to comment a line
Plug 'tyru/caw.vim'

"Insert the apostrophe, Double quotes, etc...
Plug 'tpope/vim-surround'

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

"FZF
Plug 'junegunn/fzf.vim', { 'do': 'FZF'}

"Python
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
" Plug 'tweekmonster/braceless.vim'

Plug 'osyo-manga/vim-anzu'
" Plug 'brooth/far.vim'

" Plug 'RRethy/vim-illuminate'

Plug 'denstiny/Terslation'
Plug 'SpringHan/Terslation.vim'

Plug 'liuchengxu/vista.vim'

call plug#end()

"================BASIC MAPPING===================

" noremap <silent> l u

" noremap <silent> i k
" noremap <silent> n h
" noremap <silent> e j
" noremap <silent> o l

" set h (same as n, cursor left) to 'end of word'
" noremap h e

" U/E keys for 5 times u/e (faster navigation)
" noremap <silent> I 5k
" noremap <silent> E 5j

" noremap <silent> yy o
" noremap <silent> j y

let mapleader=" "

noremap <silent> <C-j> 5j
noremap <silent> <C-k> 5k
noremap <silent> <C-h> 10h
noremap <silent> <C-l> 10l

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map <LEADER>t sh:terminal<CR>

" map sn :set splitright<CR>:vsplit<CR>
" map s<++> :set <++><CR>:<++><CR>


" map <LEADER>rr <LEADER>c<LEADER>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

map <C-n> :tabe<CR>
map rh :-tabnext<CR>
map rl :+tabnext<CR>

map <LEADER>qq :q!<CR>
map <LEADER>wq :wq<CR>
map <LEADER>ww :w!<CR>

map <LEADER>yy "+y
map <LEADER>pp "+p

"================================================

let &t_ut=' '
set nobackup
set backspace=indent,eol,start
set nocompatible
set helplang=cn
set ambiwidth=double
set relativenumber
set noshowmode
set viewoptions=cursor,folds,slash,unix
set wrap
set cursorline
set cursorcolumn
syntax on
set autoindent
set copyindent
set tabstop=4
set shiftwidth=4 
set cindent
set smartindent
set scrolloff=10
set novisualbell
set foldenable
set fdm=syntax
set fdm=manual
set scrolloff=6
set lazyredraw
set laststatus=2
set number
" set background=dark
set ttyfast
set t_Co=256
filetype indent on
filetype plugin on
filetype plugin indent on
filetype on
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.

if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo,.
endif

set colorcolumn=80
set updatetime=1000

"===============================================

" let g:python2_host_skip_check=1
let g:python2_host_prog='/usr/bin/python2'
" let g:python3_host_skip_check=1
let g:python3_host_prog='/usr/bin/python3'

"===============================================


" let g:airline_theme='base16_snazzy'
" let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
" let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline_left_sep  = ''
" let g:airline_right_sep = ''
" let g:airline_mode_map = {
	" \ '__' : '-',
	" \ 'n'  : 'Nor',
	" \ 'i'  : 'Ins',
	" \ 'R'  : 'Rpl',
	" \ 'c'  : 'Cmd',
	" \ 'v'  : 'Vis',
	" \ 'V'  : 'Vli',
	" \ '^V' : 'Vbl',
	" \ 's'  : 'S',
	" \ 'S'  : 's',
	" \ '^S' : 's',
	" \}



"===============================================

set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" hi Normal ctermfg=256 ctermbg=none
"let g:airline_theme="bubblegum"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" let g:airline_powerline_fonts = 0
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
" color xcodedark
colorscheme one
"colorscheme space-vim-dark
" color space-vim-dark
" color pink-moon
" color skeletor
" color snazzy
" colorscheme molokai
" color material
"colorscheme dracula
" let g:SnazzyTransparent = 1
hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE
hi NonText ctermfg=gray guifg=grey10

"===============================================

autocmd TermOpen term://* startinsert
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

"===============================================

"=========
"===COC===
"=========

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
noremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"==============================================

"MAP
"==============================================

"Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
map tx :r !figlet

"==============================================

"Float Terminal

function! FloatTerm()
	let l:FloatTermBuf = nvim_create_buf(v:false, v:true)
	let l:opt = { 'relative': 'win', 'width':float2nr(round(0.95 * &columns)),
		\ 'height': float2nr(round(0.95 * &lines)),
		\ 'col':    float2nr(round(0.03 * &columns)),
		\ 'row':    float2nr(round(0.03 * &lines)),
		\ 'anchor': 'NW',
		\}
	let l:window = nvim_open_win(l:FloatTermBuf, v:true, l:opt)
	call nvim_win_set_option(l:window, 'number', v:false)
	call nvim_win_set_option(l:window, 'relativenumber', v:false)
	call nvim_buf_set_option(l:FloatTermBuf, 'buftype', 'nofile')
	terminal
endfunction

noremap <silent> ft :call FloatTerm()<CR>

" Compile Function

noremap rr :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		term clang % -o %< && ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		:sp
		term clang++ -std=c++11 % -o %< && ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		term javac % && java %<
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser."% &"
	endif
endfunc

"==============================================

"==================NERDTREE====================

" map tt :NERDTreeToggle<CR>

"==============================================

"==================UNDOTREE====================

let g:undotree_DiffAutoOpen = 0
noremap L :UndotreeToggle<CR>
function g:Undotree_CustomMap()
	nmap <buffer> k <plug>UndotreeNextState
	nmap <buffer> j <plug>UndotreePreviousState
	nmap <buffer> K 5<plug>UndotreeNextState
	nmap <buffer> J 5<plug>UndotreePreviousState
endfunc

"==============================================

"===================GOYO=======================

map gy :Goyo<CR>

"==================COLORIZE====================

" let g:colorizer_syntax = 1

"==============================================

"==================NERDTREE====================

" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

"==============================================

"================EASY-ALIGN====================

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"==============================================

"================NERDCOMMENT===================

" let g:NERDSpaceDelims=1

"==============================================

"=================LIGHTLINE====================

let g:lightline = {
\	'colorscheme': 'darcula',
\   'mode_map': {
\   'n':      'Normal',
\ 	'i':      'Insert',
\ 	'R':      'Replace',
\ 	'v':      'Visual',
\ 	'V':      'V-L',
\ 	"\<C-v>": 'V-B',
\ 	'c':      'Command',
\ 	't':      'Terminal',
\ },
\ 	'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
\ },
\ 	'component_function': {
\   'cocstatus': 'coc#status'
\ },
\ }



"=================MARKDOWN-PREVIEW=============
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
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

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" normal/insert
" <Plug>MarkdownPreview
" <Plug>MarkdownPreviewStop
" <Plug>MarkdownPreviewToggle

nmap <C-s> <Plug>MarkdownPreview
nmap <C-p> <Plug>MarkdownPreviewToggle
nmap <LEADER><C-s> <Plug>MarkdownPreviewStop

"===================FZF========================

set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
noremap F :FZF<CR>
noremap <C-f> :Ag<CR>
" noremap <C-h> :MRU<CR>
" noremap <C-t> :BTags<CR>
" noremap <C-l> :LinesWithPreview<CR>
" noremap <C-w> :Buffers<CR>
"noremap ; :History:<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
  \ call fzf#vim#buffers(
  \   '',
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:0%', '?'),
  \   <bang>0)


command! -bang -nargs=* LinesWithPreview
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
    \   fzf#vim#with_preview({}, 'up:50%', '?'),
    \   1)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(
  \   '',
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%', '?'),
  \   <bang>0)


command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

command! -bang BTags
  \ call fzf#vim#buffer_tags('', {
  \     'down': '40%',
  \     'options': '--with-nth 1 
  \                 --reverse 
  \                 --prompt "> " 
  \                 --preview-window="70%" 
  \                 --preview "
  \                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
  \                     head -n 16"'
  \ })

"======================HicusLine===================

" set laststatus
" let g:HicusLineEnabled = 1

" let g:HicusLine = {
" \ 	'active':{
" \		'left':[ 1, 'space', 'mode', 'space', 0, 'modified', 'space', 'filename', ],
" \		'right':[ 'filetype', 'space', 2,  'space', 'fileencoding', 'space', 'fileformat', 'space', 1, 'space', 'linenumber', 'space', ':',  'space', 'bufferlinesnumber', 'space', 0, ],
" \	}
" \}

" let g:HicusLineMode = {
" \ 	'n': 		'Normal',
" \ 	'i': 		'Insert',
" \ 	'R': 		'Replace',
" \ 	'v': 		'Visual',
" \ 	'V': 		'Visual-L',
" \ 	"\<C-v>": 	'Visual-B',
" \ 	'c': 		'Command',
" \ 	's': 		'Select',
" \ 	't': 		'Terminal',
" \}

" hi StatusLine gui=None guifg=#FFFFFF guibg=#44475A
" hi User1 gui=bold guifg=#282A36 guibg=#FF92D0
" hi User2 gui=None guifg=#282A36 guibg=#8BE9FD

"=====================anzu========================


nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)


" statusline
set statusline=%{anzu#search_status()}

"==================Comment code===================

map <LEADER>rr gcI
map <LEADER>rq gcuI

"====================Coc explorer=================

nmap tt :CocCommand explorer<CR>

"====================illuminate===================

hi illuminatedWord cterm=underline gui=underline

"===================Terslation====================

map te :TerslationToggle<CR>
map tw :TerslationWordTrans<CR>

"===================Vista=========================

noremap <C-a> :Vista!!<CR>
noremap <C-x> :Vista finder coc<CR>
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

