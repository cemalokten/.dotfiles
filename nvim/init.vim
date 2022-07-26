call plug#begin()
" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'savq/melange'
Plug 'quanganhdo/grb256'
Plug 'dracula/vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'morhetz/gruvbox'

" Text Search
Plug 'ggandor/lightspeed.nvim'

" Language Server Protocol
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Linting / Prettier / Syntax Highlighting 
Plug 'w0rp/ale'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Remove highlight after text-search
Plug 'romainl/vim-cool'

" Search & File Mangement
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Commenting
Plug 'tpope/vim-commentary'
Plug 'dkarter/bullets.vim'

" Git Changes in Gutter
Plug 'airblade/vim-gitgutter'

call plug#end()

" colorscheme grb256
colorscheme grb256
set number
set belloff=all
set relativenumber
set history=10000
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set cursorline
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set scrolloff=5
set nobackup
set nowritebackup
syntax on
set wildmenu
set foldmethod=manual
set nofoldenable
set autoread
set diffopt=vertical
set signcolumn=yes
set termguicolors
set winwidth=90

" Remapped Keys
let mapleader = ","

" Move lines/blocks up and down
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv

" Cycle thr:ugh buffers with tab key
map <§> <C-^>
nnoremap <S-tab> :bprev<CR>
nnoremap <tab> :bnext<CR>

" Fzf Search
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>e :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :BLines<CR>

" Git
nnoremap <leader>g :G<CR>

" Close Buffer
nnoremap <leader>q :bd<CR>
nnoremap <leader>rq <cmd>:1,$bd!<CR>

" Save
nnoremap <leader>s :w<CR>

" Go To Definition (vim.lsp opens quickfix list)
" nnoremap <silent> gp    <cmd>lua vim.lsp.buf.definition()<CR> 
nnoremap <silent> gt    <cmd>:ALEGoToDefinition<CR> 


" MULTIPURPOSE TAB KEY
" Stolen from @garybernhardt's config (he so good)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col
        return "\<tab>"
    endif

    let char = getline('.')[col - 1]
    if char =~ '\k'
        " There's an identifier before the cursor, so complete the identifier.
        return "\<c-p>"
    else
        return "\<tab>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>



lua << EOF
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities,
  }
  vim.diagnostic.config({
    virtual_text = false,
    signs = false,
})

require'lightspeed'.setup {
  ignore_case = true,
}

EOF
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" Format Document
let g:ale_linters = {'javascript': ['tsserver', 'eslint'], 'typescript': ['tsserver', 'eslint'], 'typescript.tsx': ['tsserver', 'eslint'], 'typescriptreact': ['tsserver', 'eslint']}
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['prettier'], 'typescript.tsx': ['prettier'], 'typescriptreact': ['prettier'], 'css': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 0
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 0
let g:ale_javascript_eslint_executable = 'eslint --cache'
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_set_highlights = 0

let g:fzf_layout = { 'down': '~30%' }
let g:fzf_preview_window = ['right:hidden', 'ctrl-/']

let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

highlight clear SignColumn
highlight Search guibg=blue guifg=white gui=none

autocmd BufEnter * :syntax sync fromstart

" Autocomplete Brackets
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha


" Console Log selected work in VISUAL MODE
vmap <leader>iw y<esc>oconsole.log(<c-r>"<esc>

" Better window navigation
nnoremap <C-K> <C-W>W
nnoremap <C-S> <C-W>V
