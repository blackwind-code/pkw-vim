set nocompatible              " be iMproved, required
set encoding=utf-8
set t_Co=256
set backspace=indent,eol,start
filetype on                 " required
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'scrooloose/nerdtree'
 Plugin 'xuyuanp/nerdtree-git-plugin'
 Plugin 'scrooloose/syntastic'
 Plugin 'bling/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'roosta/srcery'
 Plugin 'tomasr/molokai'
 Plugin 'valloric/youcompleteme'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'majutsushi/tagbar'
 Plugin 'pthrasher/conqueterm-vim'
 Plugin 'tmhedberg/SimpylFold'
 Plugin 'wesleyche/srcexpl'
 Plugin 'yuttie/comfortable-motion.vim'
 Plugin 'ervandew/supertab'
 Plugin 'AutoComplPop'
 Plugin 'marijnh/tern_for_vim'
 Plugin 'rip-rip/clang_complete'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
 colorscheme srcery
 syntax on
 set number
 set tabstop=4
 set shiftwidth=4
 set hlsearch
 set autoindent
 set cindent
 set autowrite
 set autoread
 set history=256
 set tags=tags;
 au BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \ exe "norm g`\"" |
 \ endif
 set cursorline
 highlight LineNr ctermbg=darkgrey
 highlight CursorLineNr ctermfg=white ctermbg=yellow
 hi CursorLine cterm=none
 let g:rehash256 = 1
 let g:molokai_original = 1
 set foldmethod=indent
 set foldlevel=99
 nnoremap <space> za
 set runtimepath^=~/.vim/bundle/ctrlp.vim
 let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
 let g:ycm_collect_identifiers_from_tags_files = 1
 let g:ycm_confirm_extra_conf = 0
 let g:ycm_server_python_interpreter='/usr/bin/python3'
 let g:airline_theme='base16_summerfruit'
 let g:AutoClosePumvisible={"ENTER":"<C-Y>", "ESC":"<ESC>"}
 let g:indent_guides_enable_on_vim_startup = 1
 let g:comfortable_motion_scroll_down_key = "j"
 let g:comfortable_motion_scroll_up_key = "k"

 nmap <F1> :vsplit  
 nmap <F2> :split 
 nmap <F3> :tabnew 
 nmap <F4> :NERDTree<CR>
 nmap <F5> :CtrlP<CR>
 nmap <F6> :TagbarOpen fj<CR>
 nmap <F7> :ConqueTermSplit 

 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h
 map <C-l> <C-W>l
 " Set tags file here ! "
 " set tags=/home/pkw/Workspace/<Project>/tags
 "
 " Thigns to do post installation !!
 " 1. Compile YCM from ~/.vim/bundle/youcompleteme
 "    sudo sh ./install.py --all --system-libclang
 "
 " 2. Fix ycm timeout seconds in youcompleteme ycm python folder
 "
 " 3. Fix vim-autoclose bugs
 "
 "    Replace imap in ~/.vim/bundle/vim-autoclose/plugin/Autoclose.py line 26
 "    to  36 to inoremap
 "    inoremap 
 "
 "    YCM completion
 let g:ycm_key_list_select_completion=['', '']
 let g:ycm_key_list_previous_completion=['', '']
 let g:ycm_autoclose_preview_window_after_completion=1
 let g:ycm_collect_identifiers_from_tags_files=1
 inoremap <C-Space> <C-x><C-o>
 autocmd FileType css set omnifunc=csscomplete#CompleteCSS
 nnoremap gt :YcmCompleter GoTo<Enter>
 nnoremap gd :YcmCompleter GoToDeclaration<Enter>
 nnoremap gf :YcmCompleter GoToDefinition<Enter>
 nnoremap t :YcmCompleter GetType<Enter>
 nnoremap gp :YcmCompleter GetParent<Enter>
 nnoremap gb <C-o>
 nnoremap gf <C-i>
 nnoremap H :tabprevious<Enter>
 nnoremap L :tabnext<Enter>

 set completeopt=longest,menuone
 inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
 inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
 inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
 " open omni completion menu closing previous if open and opening new menu without changing the text
 inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
 " open user completion menu closing previous if open and opening new menu without changing the text
 inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'


  " C scope

" cscope
if has("cscope")
	" use both cscope and ctags for 'ctrl-]', ':ta', and 'vim -t'
	set cscopetag

	" check cscope for definition of a symbol before checking ctags: set to 1
	" if you wnat the reverse search order
	set csto=0

	" add any cscope database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add the database pointed ti by environment variable
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif

	" show msg when any other cscope db added
	set cscopeverbose

	" To do the first type of search, hit 'CTRL-\', fllowed by one of the
	" cscope search types above (s,g,c,t,e,f,i,d). The result of your cscope
	" search will be displayed in the current window. You can use CTRL-T to
	" go back to where you were before the search

	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

	" Using 'CTRL-spacebar' (interpreted as CTRL-@ by vim) then a search type
	" makes the vim window split horizontally, with search result displayed in
	" the new window
	"
	
	nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	" Hitting CTRL-space *twice* before the search type does a vertical
	" split instead of a horizontal one (vim 6 and up only)

	nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR><CR>
	nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

"autocomplpop
function! InsertTabWrapper()
    let col=col('.')-1
    if !col||getline('.')[col-1]!~'\k'
        return "\<TAB>"
    else
        if pumvisible()
            return "\<C-N>"
        else
            return "\<C-N>\<C-P>"
        end
    endif
endfunction

inoremap <TAB> <c-r>=InsertTabWrapper()<cr>

 "Syntastic 
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:syntastic_javascript_checkers = ['jshint']
 let g:ycm_extra_conf_vim_data = ['&filetype']
