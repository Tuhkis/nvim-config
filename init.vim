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
 Plug 'morhetz/gruvbox'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'deoplete-plugins/deoplete-clang'
 Plug 'arcticicestudio/nord-vim'
 Plug 'jdonaldson/vaxe'
 Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'LunarWatcher/auto-pairs'
 Plug 'maxboisvert/vim-simple-complete'
call plug#end()

colorscheme gruvbox
NERDTreeToggle
