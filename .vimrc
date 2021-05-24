set nocompatible

syntax enable
set backspace=indent,eol,start
let mapleader=","
set number
set noerrorbells visualbell t_vb=
set autowriteall
set complete=.,w,b,u
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smartcase


"----------Visuals----------"
colorscheme custom
set t_Co=256
set lines=999

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg


"----------Search----------"
set hlsearch
set incsearch


"----------Split Management----------"
set splitbelow
set splitright

"Easier navigation between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"----------Mappings----------"
nmap <Leader>ev :tabedit $HOME/.dotfiles/.vimrc<cr>
nmap <Leader>es :e $HOME/.dotfiles/snippets/

"Search highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Quickly browse to any tag/symbol in the project
"Tip: run ctags -R to regenerate the index
nmap <Leader>f :tag<space>

"Sort PHP use statements
""http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


"-------------Plugins--------------"
"
""/
"/ CtrlP
""/
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"/
""/ NERDTree
"/
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.\.$', '\.$', '\~$']
let NERDTreeMinimalUI = 1

nmap <C-b> :NERDTreeToggle<cr>

"/
""/ Greplace.vim
"/
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

"/
""/ vim-php-cs-fixer.vim
"/
let g:php_cs_fixer_level = "psr2"

nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"/
""/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
""/ Ultisnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"/
""/ vim-test
"/
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

"/
""/ NERDCommenter
"/
let g:NERDSpaceDelims = 1

nmap <Leader>c <plug>NERDCommenterToggle


"-------------Laravel-Specific--------------"
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

"Zoom a vim pane, ,= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

"-------------Functions--------------"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

"This runs the full PHPUnit suite.
nnoremap ,t :!phpunit<cr>

"This runs the test method under the cursor.
nmap ,tm ?function^Mwviwy:!phpunit --filter <c-r>"<CR>

nmap <leader>e :MRU<CR>
nmap <leader>w :bd<CR>
nmap ;w :w<CR>
nmap <C-]> g<C-]>
imap jj <Esc>
nmap / /\c

"Syntastic recommended default settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php', 'phpmd']

"A list of regexes for phpcs messages to ignore. I don't care about any of
"these detections.
let g:syntastic_quiet_messages = { "regex": 'Missing @return\|Missing parameter comment\|Missing class doc comment\|Missing file doc comment' }

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'yegappan/mru'
Plug 'vim-syntastic/syntastic'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'garbas/vim-snipmate'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
"Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'vim-test/vim-test'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'

"Snipmate dependencies
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
call plug#end()


"Tips
" If there are Syntastic errors on the page, do :Errors to read the list.
" ltag methodName and then lopen to view all symbols.

"regenerate tags with
" ctags -R --PHP-kinds=cfi --regex-php="/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i"
" gc will comment out the selection.

