call plug#begin('~/.vim/plugged')
 
" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'shougo/neocomplete'
Plug 'lokaltog/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'mattn/webapi-vim'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/netrw.vim'
Plug 'exu/pgsql.vim'
Plug 'yegappan/mru'
Plug 'vim-scripts/TeTrIs.vim'


"Python Stuff
Plug 'pyflakes/pyflakes'
Plug 'yssource/python.vim'
Plug 'python_match.vim'
Plug 'pythoncomplete'
"Go, Rust and Markdown
Plug 'Blackrush/vim-gocode'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-markdown'
"Javascript Stuff
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
Plug 'kchmck/vim-coffee-script'
 
"R Plugins
Plug 'vim-scripts/Vim-R-plugin'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'

"Other Stuff
Plug 'ervandew/screen'
Plug 'scrooloose/nerdcommenter'
Plug 'ashisha/image.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'vim-scripts/sessionman.vim'
Plug 'matchit.zip'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mattn/gist-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-emoji'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim'
Plug 'rizzatti/dash.vim'

 
" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }



 
" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/jalvesaq/R-Vim-runtime.git'
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/bling/vim-bufferline.git'
Plug 'https://github.com/tpope/vim-abolish.git'
 
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
 
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
 
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
 
call plug#end()
 
"""" Other stuff

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

 
let g:airline#extensions#tabline#enabled = 1
 
map <C-e> :NERDTreeToggle<CR>"
 
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8
 
 
if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
endif
 
set backup                  " Backups are nice ...
if has('persistent_undo')
   set undofile                " So is persistent undo ...
   set undolevels=1000         " Maximum number of changes that can be undone
   set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif
 
"VIM UI ==========
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
 
highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color
 
if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif
 
"=================
 
if has('statusline')
   set laststatus=2
 
   " Broken down into easily includeable segments
   set statusline=%<%f\                "Filename
   set statusline+=%w%h%m%r            " Options
   "if !exists('g:override_spf13_bundles')
    ""  set statusline+=%{fugitive#statusline()} " Git Hotness
   "endif
   set statusline+=\ [%{&ff}/%Y]            " Filetype
   set statusline+=\ [%{getcwd()}]          " Current dir
   set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
 
    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set foldenable                  " Auto fold code
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
 
"=============
 
" Formatting {
 
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    "set matchpairs+=<:>             " Match, to be used with %
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
    "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
    " Remove trailing whitespaces and ^M chars
    " To disable the stripping of whitespace, add the following to your
    " .vimrc.before.local file:
    "   let g:spf13_keep_trailing_whitespace = 1
    autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
    "autocmd FileType go autocmd BufWritePre <buffer> Fmt
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
    " preceding line best in a plugin but here for now.
 
    autocmd BufNewFile,BufRead *.coffee set filetype=coffee
 
    " Workaround broken colour highlighting in Haskell
    autocmd FileType rust setlocal nospell
 
"============
 
    " Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>
 
    "UPPERCASE and lowsercase conversion
    nnoremap g^ gUiW
    nnoremap gv guiW
 
    "go to first and last char of line
    nnoremap H ^
    nnoremap L g_
    vnoremap H ^
    vnoremap L g_
 
        " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h
 
    " Some helpers to edit mode
    " http://vimcasts.org/e/14
    cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
    map <leader>ew :e %%
    map <leader>es :sp %%
    map <leader>ev :vsp %%
    map <leader>et :tabe %%
 
    " NerdTree {
        if isdirectory(expand("~/.vim/plugged/nerdtree"))
            map <C-e> <plug>NERDTreeTabsToggle<CR>
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>
 
            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=1
            let NERDTreeMouseMode=2
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
            let g:nerdtree_tabs_open_on_gui_startup=0
        endif
    " )
 
    " Tabularize {
        if isdirectory(expand("~/.vim/plugged/tabular"))
            nmap <Leader>a& :Tabularize /&<CR>
            vmap <Leader>a& :Tabularize /&<CR>
            nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            nmap <Leader>a=> :Tabularize /=><CR>
            vmap <Leader>a=> :Tabularize /=><CR>
            nmap <Leader>a: :Tabularize /:<CR>
            vmap <Leader>a: :Tabularize /:<CR>
            nmap <Leader>a:: :Tabularize /:\zs<CR>
            vmap <Leader>a:: :Tabularize /:\zs<CR>
            nmap <Leader>a, :Tabularize /,<CR>
            vmap <Leader>a, :Tabularize /,<CR>
            nmap <Leader>a,, :Tabularize /,\zs<CR>
            vmap <Leader>a,, :Tabularize /,\zs<CR>
            nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
            vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        endif
    " }
 
    " Session List {
        set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
        if isdirectory(expand("~/.vim/bundle/sessionman.vim/"))
            nmap <leader>sl :SessionList<CR>
            nmap <leader>ss :SessionSave<CR>
            nmap <leader>sc :SessionClose<CR>
        endif
    " }
 
 
        " PyMode {
        " Disable if python support not present
        if !has('python')
            let g:pymode = 0
        endif
 
        if isdirectory(expand("~/.vim/plugged/python-mode"))
            let g:pymode_lint_checkers = ['pyflakes']
            let g:pymode_trim_whitespaces = 0
            let g:pymode_options = 0
            let g:pymode_rope = 0
        endif
    " }
 
    " ctrlp {
        if isdirectory(expand("~/.vim/plugged/ctrlp.vim/"))
            let g:ctrlp_working_path_mode = 'ra'
            nnoremap <silent> <D-t> :CtrlP<CR>
            nnoremap <silent> <D-r> :CtrlPMRU<CR>
            let g:ctrlp_custom_ignore = {
                \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
 
            " On Windows use "dir" as fallback command.
            "if WINDOWS()
            "    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
            if executable('ag')
                let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
            elseif executable('ack-grep')
                let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
            elseif executable('ack')
                let s:ctrlp_fallback = 'ack %s --nocolor -f'
            else
                let s:ctrlp_fallback = 'find %s -type f'
            endif
            if exists("g:ctrlp_user_command")
                unlet g:ctrlp_user_command
            endif
            let g:ctrlp_user_command = {
                \ 'types': {
                    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': s:ctrlp_fallback
            \ }
 
            if isdirectory(expand("~/.vim/pluggedctrlp-funky/"))
                " CtrlP extensions
                let g:ctrlp_extensions = ['funky']
 
                "funky
                nnoremap <Leader>fu :CtrlPFunky<Cr>
            endif
        endif
    "}
    " Fugitive {
        if isdirectory(expand("~/.vim/plugged/vim-fugitive/"))
            nnoremap <silent> <leader>gs :Gstatus<CR>
            nnoremap <silent> <leader>gd :Gdiff<CR>
            nnoremap <silent> <leader>gc :Gcommit<CR>
            nnoremap <silent> <leader>gb :Gblame<CR>
            nnoremap <silent> <leader>gl :Glog<CR>
            nnoremap <silent> <leader>gp :Git push<CR>
            nnoremap <silent> <leader>gr :Gread<CR>
            nnoremap <silent> <leader>gw :Gwrite<CR>
            nnoremap <silent> <leader>ge :Gedit<CR>
            " Mnemonic _i_nteractive
            nnoremap <silent> <leader>gi :Git add -p %<CR>
            nnoremap <silent> <leader>gg :SignifyToggle<CR>
        endif
    "}
 
        " vim-airline {
        " Set configuration options for the statusline plugin vim-airline.
        " Use the powerline theme and optionally enable powerline symbols.
        " To use the symbols , , , , , , and .in the statusline
        " segments add the following to your .vimrc.before.local file:
        "   let g:airline_powerline_fonts=1
        " If the previous symbols do not render for you then install a
        " powerline enabled font.
 
        " See `:echo g:airline_theme_map` for some more choices
        " Default in terminal vim is 'dark'
        if isdirectory(expand("~/.vim/plugged/vim-airline/"))
            if !exists('g:airline_theme')
                let g:airline_theme = 'solarized'
            endif
            if !exists('g:airline_powerline_fonts')
                " Use the default set of separators with a few customizations
                let g:airline_left_sep='›'  " Slightly fancier than '>'
                let g:airline_right_sep='‹' " Slightly fancier than '<'
            endif
        endif
    " }
 
        " Initialize NERDTree as needed {
    function! NERDTreeInitAsNeeded()
        redir => bufoutput
        buffers!
        redir END
        let idx = stridx(bufoutput, "NERD_tree")
        if idx > -1
            NERDTreeMirror
            NERDTreeFind
            wincmd l
        endif
    endfunction
    " }
 
    
    " Strip whitespace {
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }
 
" Shell command {
  function! s:RunShellCommand(cmdline)
      botright new
 
      setlocal buftype=nofile
      setlocal bufhidden=delete
      setlocal nobuflisted
      setlocal noswapfile
      setlocal nowrap
      setlocal filetype=shell
      setlocal syntax=shell
 
      call setline(1, a:cmdline)
      call setline(2, substitute(a:cmdline, '.', '=', 'g'))
      execute 'silent $read !' . escape(a:cmdline, '%#')
      setlocal nomodifiable
       1
   endfunction
     
   command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)
    " e.g. Grep current file for <search_term>: Shell grep -Hn <search_term> %
    " }
"=======================
" R script settings
 let maplocalleader = ","
 let mapleader=","
 vmap <Space> <Plug>RDSendSelection
 nmap <Space> <Plug>RDSendLine
 let vimrplugin_applescript=0
 let vimrplugin_vsplit=1
 
" Adding buffer switching
 map gn :bn<cr>
 map gp :bp<cr>
 map gd :bd<cr>
 map gdd :bd!<cr>
 
 
"R Commands
 map <LocalLeader>nr :call RAction("rownames")<CR>
 map <LocalLeader>nc :call RAction("colnames")<CR>
 map <LocalLeader>n2 :call RAction("names")<CR>
 map <LocalLeader>nn :call RAction("dimnames")<CR>
 map <LocalLeader>nd :call RAction("dim")<CR>
 map <LocalLeader>nh :call RAction("head")<CR>
 map <LocalLeader>nt :call RAction("tail")<CR>
 map <LocalLeader>nl :call RAction("length")<CR>
 map <LocalLeader>cc :call RAction("class")<CR>
 map <LocalLeader>nw :call SendCmdToR("system('clear')")<CR>
 map <LocalLeader>ne :call SendCmdToR("system('traceback()')")<CR>
 map <LocalLeader>sb :call SendCmdToR("system.time({""})<CR>
 map <LocalLeader>se :call SendCmdToR("}")")<CR>
 map <LocalLeader>tt :call SendCmdToR("tt = ")<CR>"

 "Vingar
let g:netrw_liststyle=1

"Color Scheme
colorscheme seoul256

"Macros
let @d=":%le<CR>:qkbg/^$/d<CR>:%s/\s\+$//<CR>:%s/$/ kb, /<CR>"

let @q=":%le<cr>:g/^$/d<cr>:%s/\s\+$//<cr>:%s/$/, /<cr>"

"Silver Searcher
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
 " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" mouse
 silent! set ttymouse=xterm2
 set mouse=a
