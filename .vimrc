set number
set relativenumber
set nowrap 
set bg=dark
set tabstop=2
set shiftwidth=2
set hlsearch
set backspace=indent,eol,start
set mouse=a
set ignorecase
set number
set smarttab
set cindent
set smarttab
set expandtab
set laststatus=2
set signcolumn=yes
set mouse=a

" Plugins

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'

" Colorscheme(s)
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set background=dark
" colorscheme gruvbox
colorscheme sonokai 

" Coc config
let g:coc_global_extensions = [
			\ 'coc-emmet',
			\ 'coc-html',
			\ 'coc-css',
			\ 'coc-tsserver',
			\ 'coc-snippets',
      \ 'coc-eslint',
      \ 'coc-clangd',
      \ 'coc-prettier',
			\ ]


" Keymaps 

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<cr>
nnoremap <tab>n :tabnew<cr>
nnoremap <tab>q :tabclose<cr>
nnoremap <tab>l :tabnext<cr>
nnoremap <tab>h :tabprevious<cr>
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#config#config_precedence = 'file-override'
xmap <leader>p :Prettier<CR>
nmap <leader>p :Prettier<CR>


" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
" let g:airline_theme='dark'



