""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  This is my Neovim config.                                   "
"  I build this from multiple sources on the internet.         "
"  You need vimPlug for this to work.                          "
"  Run :PlugInstall                                            "
"                                                              "
"  There is a floating terminal window. Use F12 to open it     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set number
set mouse=v
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set tabstop=1               " number of columns occupied by a tab
syntax on                   " syntax highlighting

set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set showtabline=2
set autowrite
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
   set termguicolors
 endif
endif

" Autocomplete stuff
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


call plug#begin()
 Plug 'neoclide/coc.nvim', {'branch': 'release'}                              " Cock hehe
 Plug 'deoplete-plugins/deoplete-clang'                                       " C/CPP plugin
 Plug 'jdonaldson/vaxe'                                                       " Random haxe plugin
 Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }     " NERDTree!
	Plug 'LunarWatcher/auto-pairs'                                               " Autoclose brackets and such
 Plug 'vim-airline/vim-airline'                                               " Cool infobar thingy
 Plug 'vim-airline/vim-airline-themes'                                        " Themes foor infobar thingy
	Plug 'voldikss/vim-floaterm'                                                 " Floating terminal window just if needed
	Plug 'maxboisvert/vim-simple-complete'                                       " I remember this being a really cool one. Just can't remember what it does
 Plug 'haystackandroid/forgotten'                                             " Cool theme I'm using
 " Plug 'morhetz/gruvbox'                                                     " Cool theme I used to use
 " Plug 'arcticicestudio/nord-vim'                                            " Cool theme I used to use
call plug#end()

colorscheme forgotten-dark " Set Colourscheme

let g:airline#extensions#tabline#enabled = 1

" air-line looking cool (need powerline font)
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols (These are backup if powerline fonts are not installed)
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Set terminal stuff (Open on bottom)
tnoremap <ESC> <C-\><C-n>
belowright spl | terminal
resize 11

" Set a floating terminal for larger view.
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

NERDTreeToggle " Open NERDTree
