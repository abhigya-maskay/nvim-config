"turn on relative line numbering
:set relativenumber 
"Some defaults
set shiftwidth=2
set softtabstop=2


"show leader
set showcmd

"remap leader to space
map <Space> <Leader>

"set hidden for TextEdit
set hidden

"Remove backup for coc
set nobackup
set nowritebackup

"Set cmdheight for messages
set cmdheight=2

"set update time for diagnostics
set updatetime=300

"don't give |ins-completion-menu| messages
set shortmess+=c

"Close preview window when completion is done
autocmd! CompleteDone = if pumvisible() == 0 | pclose | endif
			\
"remap autocomplete to Tab 
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') -1
	return !col || getline('.')[col -1] =~# '\s'
endfunction


"Add goto bindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Use K for documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim, 'help'], &filetype) >=0)
		execute 'h '.expand('<cword>')
	else 
		call CocAction('doHover')
	endif
endfunction

"Highlight symbol on cursor hold
autocmd CursorHold * silent call CocActionAsync('highlight')

"map for format
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

"map for codeAction
nmap <leader>l <Plug>(coc-codeaction-selected)
xmap <leader>l <Plug>(coc-codeaction-selected) 

"Remap completion to <cr>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'neovimhaskell/haskell-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'itchyny/lightline.vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'mhartington/oceanic-next'
Plug 'cespare/vim-toml'
Plug 'jceb/vim-orgmode'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'guns/vim-sexp'
Plug 'junegunn/fzf.vim'
Plug 'mtth/scratch.vim'
call plug#end()

"remap Esc to fd
inoremap fd <Esc>
nnoremap fd <Esc>
vnoremap fd <esc>

"remap window controls
nnoremap <Leader>b <C-w>

"fugitive mapping
map <Leader>gs :G<CR>
map <Leader>gd :Gdiffsplit<CR>
map <Leader>gp :Gpush<CR>
map <Leader>gu :Gpull<CR>
map <Leader>gc :Gcommit<CR>

"Mappings for fzf
nmap <Leader>ff :Files<CR>
nmap <Leader>pf :GFiles<CR>

"autostart Nerdtree if no file opened
autocmd StdinReadPre * let s:std_n=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Space n to open nerdtree
map <Leader>n :NERDTreeToggle<CR>


"ColorScheme 
if (has("termguicolors"))
  set termguicolors
endif
syntax enable 
colorscheme OceanicNext

" Vim fireplace maps
autocmd FileType clojure nnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure vnoremap <buffer> <localleader>re :Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rf :%Eval<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rr :Require<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rR :Require!<cr>
autocmd FileType clojure nnoremap <buffer> <localleader>rc :FireplaceConnect<cr>

"Emmet vim remap
let g:user_emmet_leader_key='<localleader>'

"Enable rainbow parentheses
let g:rainbow_active = 1

"Disable scratch autoclose
let g:scratch_insert_autohide = 0
