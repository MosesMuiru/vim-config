" Enable syntax highlighting
syntax on

" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on
" show line numbers
set number

autocmd BufRead,BufNewFile *.ex,*.exs set filetype=elixir
autocmd BufRead,BufNewFile *.eex,*.heex,*.leex set filetype=eelixir
autocmd BufRead,BufNewFile mix.lock set filetype=elixir

" Load Telescope and set up key mappings
let mapleader = ","
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>rr <cmd>Rg<cr>
nnoremap <leader>mm <cmd>Ex<cr>
call plug#begin(has('nvim') ? stdpath('data'). '/plugged' : '~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
" or                                , { 'branch': '0.1.x' }

Plug 'wakatime/vim-wakatime'

call plug#end()

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" autocmd FileType elixir inoremap <buffer> do do<CR> end<Esc>a


