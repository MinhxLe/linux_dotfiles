if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'
Plug 'terryma/vim-multiple-cursors'
Plug 'urbainvaes/vim-ripple'
"Tagbar
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'plasticboy/vim-markdown'
Plug 'kshenoy/vim-signature'
Plug 'ajh17/VimCompletesMe'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
"Plug 'doums/coBra'
"colorschemes
Plug 'tomasr/molokai'
Plug 'flrnd/plastic.vim'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'
Plug 'tlhr/anderson.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jaredgorski/spacecamp'
Plug 'jaredgorski/fogbell.vim'
"Plug 'jupyter-vim/jupyter-vim'
"Plug 'chaoren/vim-wordmotion'
"nvim plugins
    "Plug 'Shougo/deoplete.nvim', {'do' : ':UpdateRemotePlugins'}
"Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'dense-analysis/ale'
    "Plug 'zchee/deoplete-jedi'
call plug#end()
""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""
colorscheme gruvbox 

nmap <Leader>t :TagbarToggle<CR>
map <Leader>nt :NERDTreeToggle<CR>

" airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#branch#enabled = 1 
let g:airline#extensions#hunks#enabled = 1 
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

:nmap <silent> <C-j> :wincmd j<CR>

"fzf
:nmap <silent> <C-f> :Lines<CR>
:nmap <silent> <C-p> :Files<CR>
:nmap <silent> <C-t> :Tags<CR>
:nmap <silent> <C-s> :Ag<CR>
set wildmode=list:longest,full
set wildignore+=*.so,*.swp,*.zip,*.pyg,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND = "ag -g \"\""
let $FZF_DEFAULT_OPTS=' --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'up': '40%' }

"if has('nvim')
"    let g:fzf_layout = { 'window': 'call FloatingFZF()' }
"    function! FloatingFZF()
"    let buf = nvim_create_buf(v:false, v:true)
"    call setbufvar(buf, '&signcolumn', 'no')
    
"    let height = float2nr(30)
"    let width = float2nr(120)
"    let horizontal = float2nr((&columns - width) / 2)
"    let vertical = float2nr((&lines - height) / 2)
    
"    let opts = {
"            \ 'relative': 'editor',
"            \ 'row': vertical,
"            \ 'col': horizontal,
"            \ 'width': width,
"            \ 'height': height,
"            \ 'style': 'minimal'
"            \ }
    
"    call nvim_open_win(buf, v:true, opts)
"    endfunction
"endif

" flake8
"let g:flake8_show_in_file=1
"let g:flake8_show_in_gutter=1

"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1

""neosnippet
"imap <C-u> <Plug>(neosnippet_expand_or_jump)
"smap <C-u> <Plug>(neosnippet_expand_or_jump)
"xmap <C-u>  <Plug>(neosnippet_expand_target)

"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"imap <expr><TAB>
 "\ pumvisible() ? "\<C-n>" :
 "\ neosnippet#expandable_or_jumpable() ?
 "\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


" coc
let g:coc_global_extensions=[
    \ 'coc-python',
    \ 'coc-pairs',
    \ 'coc-snippets',
    \ 'coc-json',
    \ 'coc-metals',
    \ ]


" If hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files
set nobackup
set nowritebackup

" You will have a bad experience with diagnostic messages with the default 4000.
set updatetime=300

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumns
set signcolumn=yes

" Help Vim recognize *.sbt and *.sc as Scala files
au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumviible() ? "\<C-p>" : "\<C-h>"

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gdv :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gy :vsplit<CR><Plug>(coc-type-definition)
nmap <silent> gi :vsplit<CR><Plug>(coc-implementation)
nmap <silent> gr :vsplit<CR><Plug>(coc-references)

" Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" Use K to either doHover or show documentation in preview window
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

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Trigger for code actions
" Make sure `"codeLens.enable": true` is set in your coc config
nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Toggle panel with Tree Views
nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>s
" vim-devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:highlightedyank_highlight_duration = 100

" nerdcommenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDDefaultAlign = 'left'

