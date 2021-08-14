call plug#begin('~/.nvim/plugged')
" File and folder management
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

" Language support
Plug 'tpope/vim-projectionist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Golang
Plug 'fatih/vim-go'

" JavaScript
Plug 'yuezk/vim-js'

" Pubspec Assist
Plug 'f-person/pubspec-assist-nvim'

" Editor Configuration
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Theme
Plug 'phanviet/vim-monokai-pro'

" Term
Plug 'caenrique/nvim-toggle-terminal'

" Indent Guide
Plug 'nathanaelkane/vim-indent-guides'

" Devicons
Plug 'ryanoasis/vim-devicons'

" Rainbow Parentheses
Plug 'luochen1990/rainbow'

" Surround
Plug 'tpope/vim-surround'

" Repeat
Plug 'tpope/vim-repeat'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Commentary
Plug 'tpope/vim-commentary'
call plug#end()

" Theme Configuration
syntax on
colorscheme monokai_pro

" VIM Configuration
set termguicolors
set noerrorbells
set number
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/data/backup
set undofile
set incsearch
set tabstop=2
set softtabstop=2 noexpandtab
set shiftwidth=2
set clipboard=unnamedplus
set backspace=indent,eol,start
set encoding=UTF-8

" Keymap
let mapleader=";"

" Move Split Window
map <silent> <leader>h :wincmd h <CR>
map <silent> <leader>j :wincmd j <CR>
map <silent> <leader>k :wincmd k <CR>
map <silent> <leader>l :wincmd l <CR>

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Terminal
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

" COC Configuration
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Git
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

" Buffers
nmap <silent> <leader>n :bn<cr>
nmap <silent> <leader>p :bp<cr>
nmap <silent> <leader>d :bd<cr>

" Coc Snippets
imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

 " Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" ==== Plugin Configuration ====
" Indent Rainbow Plugin
let g:rainbow_active = 1
let g:rainbow_conf = {
  \ 'separately': {
  \   'nerdtree': 0,
  \  }
  \}

" Airline Plugin
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_y = ''
let g:airline_section_z = '(%3p%%)%3l/%L:%3v'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep=' '
let g:airline#extensions#tabline#right_sep_alt=' '
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1

" Webdevicons Plugin
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0

" NERDTree Plugin
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeGitStatusUseNerdFonts = 1

" Indent Guide Plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" Dart Plugin
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 80']

" Editor Configuration Plugin
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Disable vim-go :GoDef short cut (gd)
let g:go_def_mapping_enabled = 0

" COC Extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-go',
  \ 'coc-bloc',
  \ 'coc-yaml',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ ]

