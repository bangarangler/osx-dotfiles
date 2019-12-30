call plug#begin()
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'kabbamine/vcoolor.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
"Plug 'scrooloose/syntastic'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'ervandew/supertab'
"Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --ts-completer' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'pangloss/vim-javascript'
Plug 'sirver/ultisnips'
"Plug 'isruslan/vim-es6'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/matchit.zip'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
"Plug 'othree/html5.vim', { 'for': 'html'  }
"Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] }
let g:jsx_ext_required = 0
"Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
"Plug 'groenewege/vim-less', { 'for': 'less' }
"Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
"Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'gko/vim-coloresque'
"Plug 'stephenway/postcss.vim', { 'for': 'css' }
"Plug 'elzr/vim-json', { 'for': 'json'  }
"let g:vim_json_syntax_conceal = 0
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'valloric/matchtagalways'
"Plug 'joonty/vdebug'
"let g:mta_filetypes = {
			"\ 'javascript.jsx' : 1,
			"\}
Plug 'pablopunk/dynamic-file-completion.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'styled-components/vim-styled-components'
Plug 'tpope/vim-abolish'
"Plug 'jparise/vim-graphql'
Plug 'tmhedberg/simpylfold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'vim-scripts/Conque-GDB'
call plug#end()

let g:coc_global_extensions = ["coc-json", "coc-tsserver", "coc-html", "coc-css", "coc-highlight", "coc-emmet", "coc-snippets", "coc-git", "coc-prettier"]

"map Ranger File Tree
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>
"Ranger // open current file by default
"RangerCurrentFile // Default Ranger behaviour
"RangerCurrentDirectory
"RangerWorkingDirectory

"RangerNewTab
"RangerCurrentFileNewTab
"RangerCurrentDirectoryNewTab
"RangerWorkingDirectoryNewTab

"set termguicolors
filetype plugin indent on
filetype on
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
""set completeopt=longest,menuone
""makes enter key select highlighted text like <C-y>
":inoremap <expr> <CR> pumvisible() ? '\<C-y>' : "\<C-g>u\<CR>"
""Make <C-N> work as usual when menu appears simulate down key
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
""simulates c-x c-o then simulates c-n c-p and then down
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  "\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
 "omni completion <C-X><C-O> open pop up <C-N> forward <C-P> back
"set paste toggle
set pastetoggle=<Leader><Leader>p

" VISUALLY SELECT AND "p y OR ANY LETTER OR NUMBER YANKS TO SPECIFIC REGISTER
" TO PASTE IT PRESS "p p
" :reg TO CHECK OUT PRINT REGISTER

" move lines up or dowwn
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '>-1<CR>gv=gv

"ma - mark a `a to return, mb = mark b `b to return
":'a,'bs/C/S/c  changes all c's above to S
" global search and replace with confirm y or n
":%s/img/jpg/gc


"matchit.vim
:filetype plugin on
packadd! matchit
:source $VIMRUNTIME/macros/matchit.vim
syntax on
"color dracula
let g:javascript_plugin_jsdoc = 1
set clipboard=unnamed
"set pastetoggle=<F2>
set mouse=a
set t_Co=256
let g:dracula_italic = 0
colorscheme dracula
"colo dracula
highlight Normal ctermbg=None
"set t_Co=256
"let g:colors_name = 'dracula'

 ":read ~/.vim/templates/htmlskeleton.sh
 "
set rtp+=/usr/local/opt/fzf
" customize fzf colors to match your color scheme
let g:fzf_colors =
	\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
"default :buffers
nmap <Leader>b :buffers<CR>
"FZF :Buffers
nmap <Leader>b :Buffers<CR>
nmap <Leader>n :files<CR>
nmap <Leader>m :bufdo! bw<CR>
nnoremap <Leader>t :Tags<CR>

set tags=tags



" set leaderf to open FZF
nmap <Leader>f :FZF<CR>


" settings for vcoolor
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>c'


" set leader key to \
let mapleader="\\"

"re-map esc to jk
inoremap jk <esc>

"emmet leader key
let g:user_emmet_leader_key=','

" fugitive mappings
" :Gdiff
nnoremap <leader>gd : Gdiffsplit!<CR>
" :diffget //2 file visually on the left
nnoremap gd2 :diffget //2<CR>
" :diffget //3 file visually on the right
nnoremap gd3 :diffget //3<CR>
" :diffupdate -- fix spacing after change
nnoremap gdu :diffupdate<CR>


set showmatch

set wildmenu
set wildmode=longest:full,full

"set cursorline

" set number

function! LineNumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>nt :call LineNumberToggle()<cr>

set incsearch

set hidden


"NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" ALE Config.  more below
" Enable completion where available.
 " This setting must be set before ALE is loaded.
 let g:ale_completion_enabled = 1
 set wildmode=longest:full,full


" better rainbow parentheses color options
let g:rbpt_colorpairs = [
		\ ['darkMagenta',       'RoyalBlue3'],
		\ ['Darkblue',    'SeaGreen3'],
		\ ['darkgray',    'DarkOrchid3'],
		\ ['darkgreen',   'seagreen3'],
		\ ['darkcyan',    'RoyalBlue3'],
		\ ['darkblue',     'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['darkMagenta',       'seagreen3'],
		\ ['gray',        'RoyalBlue3'],
		\ ['darkcyan',       'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['Darkblue',    'darkcyan'],
		\ ['darkgreen',   'RoyalBlue3'],
		\ ['darkcyan',    'SeaGreen3'],
		\ ['lightmagenta',     'DarkOrchid3'],
		\ ['lightcyan',         'darkmagenta'],
		\ ]


let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
"augroup filetype javascript syntax=javascript
"autocmd FileType javascript syntax clear jsFuncBlock jsFuncArgs


"This is syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_html_tidy_ignore_errors = [
    "\ '<ion-icon> is not recognized!', 'discarding unexpected <ion-icon>', 'discarding unexpected </ion-icon>'
    "\ ]

 " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~/.vim/ultisnips_rep
"set runtimepath+=~/.vim/mysnippets/UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsSnippetDir="~/.vim/mysnippets"
"let g:UltiSnipsSnippetDirectories="~/.vim/mysnippets"
 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" this turns tab off for YCM.
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
" now cycle through with <C-N> and <C-P> keys

"auto clear white space on save
autocmd BufWritePre * StripWhitespace

"<Leader>ig "toggles indent guides
nnoremap <leader>ig :IndentGuidesToggle<CR>

" default vim ctrl a will increment and ctrl x will decrement

" vim Surround
" normal mode
" ds -delete a surrounding
" cs -change a surrounding
" ys -add a surrounding
" yss -add a surrounding to the whole line
" ySs -add a surrounding to the whole line, place it on a new line + indent
" ySS -same as ySs
" visual mode
" s -in visual mode, add a surrounding
" S -invisual mose, add a surrounding but place text on a new line and indend
" Surroundings can be added with the same cs command, which takes a
" surrounding target, or with the ys command that takes a valid vim motion.
" special yss comand that applies a surrounding to the whole line, and ySS
" that applies the surrounding to the whole line, places the text on a new
" line and indents it.
" (hello world) ysi(' - ('hello world')
" hello world! ysiw) - hello (world)!
" deleting surroundings ds
" after ds command expects the surrounding target you want to delete.
" ',",`,(,),{,},[,],<,>, and a special 't' target for deleting the ineermost
" HTML tag
" 'hello world' - ds' -- hello world
" (123+4*56)/2 - ds( -- 123+4*56/2
" <div>foo</div> dst -- foo
" Surrounding can be changed with the cs command. takes a surrounding target
" and it also takes the surrounding replacement.
" more targets w for word, W for word + skip punctuation, s for sentence and p
" for paragraph
" "hello world" - cs"' -- 'hello world'
" "hello world" - cs"<q> -- <q>hello world</q>
" <div>foo</div> - cst<p> -- <p>foo</p>
" foo! - csw' -- 'foo'!
" foo! - csW' -- 'foo!'


" text wrap
:set tw=80
:set fo+=t
"gqq to break up a line if needed.
" shiftj will join the bottome line to the line the cursor is on.

" shift V to higlight and then > to indent the selected lines

set nobackup  "no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile  " no swap files

"Auto Pairs delete in pair input: foo[<BS>]
"input: {i} (press <CR> at i) output: {
"    i
"}

"Polyglot enable syntax
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
 \   '*': ['remove_trailing_lines', 'trim_whitespace'],
 \   'javascript': ['eslint', 'prettier'],
 \}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" set to 0 to disable fix files on save
"let g:ale_fix_on_save = 0
"leader key for prettier and ale
nmap <leader>d <Plug>(ale_fix)
set completeopt+=noinsert

" config add file
" config status
" config commit -m
" config push
" alias set up with bare git repo for .dotfiles

"-------- experimenting-----------
"
"set autoread "detect when a file is changed
"set textwidth=120


"searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
"clear results after search space ctrl l
nnoremap <C-L> :noh<CR><C-L>
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
"set t_vb=
"set tm=500

"set number " show line numbers
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical
set laststatus=2 " show the satus line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
"set hidden " current buffer can be put into background
set showcmd " show incomplete commands
""set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
"set cmdheight=1 " command bar height
"set title " set terminal title
set showmatch " show matching braces
""set mat=2 " how many tenths of a second to blink

"" Tab control

set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set autoindent
set smartindent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
"set cindent
"autocmd VimEnter * set autoindent
"set shiftround " round indent to a multiple of 'shiftwidth'

"" code folding settings
set foldmethod=indent " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

nnoremap <space> za

"  shortcut to save
 nmap <leader>w :w<cr>

 "edit ~/.vim
 "
 "
 map <leader>ev :e! ~/.vimrc<cr>

 " scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ALE
let g:ale_set_highlights = 0
let g:ale_change_sign_column_color = 0
"let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = '✖'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_echo_msg_format = '%severity% %s% [%linter%% code%]'
let g:ale_completion_enabled = 0


let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1

"syntax enable
" make the highlighting of tabs and other non-text less annoying
"highlight SpecialKey ctermfg=19 guifg=#333333
"highlight NonText ctermfg=19 guifg=#333333

"set term=screen-256color
":syntax on
set nocompatible
" hack work around for css highlighting.  use Ctrl h, and then run Ctrl v. fixes
" highlighting and reverts colors back to how they should be
nnoremap <C-h> :syntax on <cr>
nnoremap <C-v> :source ~/.vimrc <cr>

set splitbelow
set splitright

"split navigations Ctrl [J K L H]
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" PEP 8 indentation here
"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79
"autocmd FileType puthon setlocal expandtab autoindent fileformat=unix
"Flag unnecessary WhiteSpace
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" C ********
map <F8> :!gcc % -Wall -Wextra -o %< && ./%< <CR>


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
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)

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

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

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
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

