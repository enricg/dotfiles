let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'jreybert/vimagit'
Plug 'junegunn/goyo.vim'
Plug 'lukesmithxyz/vimling'
"Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'bling/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-commentary'
"Plug 'puremourning/vimspector'
" Afegeix els plugins per a nvim-cmp i les fonts d'autocompletat
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'
"Plug 'VonHeikemen/lsp-zero.nvim' {'branch': 'v4.x'}
Plug 'junegunn/fzf.vim'

call plug#end()

lua <<EOF

  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        require('snippy').expand_snippet(args.body) -- For `snippy` users.
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'nvim_lsp' }, -- For luasnip users.
      { name = 'buffer' }, -- For luasnip users.
      { name = 'path' } -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
--  [[ cmp.setup.filetype('gitcommit', {
--    sources = cmp.config.sources({
--      { name = 'git' },
--    }, {
--      { name = 'buffer' },
--    })
-- })
-- require("cmp_git").setup() ]]--

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--  require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--    capabilities = capabilities
--  }

  require("mason").setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  })

--require("mason-lspconfig").setup({
--  handlers = {
--    lsp_zero.default_setup--,
--    -- otros handlers de LSPconfig
--  }
--})


EOF


set title
set bg=light
set mouse=a
" set go=a
colorscheme slate
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" Plantilles
au bufnewfile *.tex 0r $HOME/Templates/latex_template
au bufnewfile *.md 0r $HOME/Templates/md_template
au bufnewfile *.html 0r $HOME/Templates/html_template
au bufnewfile *.js 0r $HOME/Templates/js_template
au bufnewfile *.php 0r $HOME/Templates/php_template
au bufnewfile *.py 0r $HOME/Templates/py_template
au bufnewfile *.sh 0r $HOME/Templates/sh_template
au BufNewFile * silent! execute 'silent! %s/<DATE>/' . strftime('%d-%m-%Y') . '/ge'
au BufNewFile * :normal gg0

" Creando plantilla
" autocmd FileType * nnoremap ,plc :-1read $HOME/.config/plantilles/plCartaPresentacioSP.txt<CR>
" Creando plantilla
" HTML
" autocmd Filetype * nnoremap ,plh :-1read $HOME/.config/plantilles/plantillaHTML.txt<CR>
" LaTeX
" autocmd FileType tex nnoremap ,pld :-1read $HOME/.config/plantilles/plantillaArticle.tex<CR>
" autocmd FileType tex nnoremap ,plp :-1read $HOME/.config/plantilles/plantillaPresentacio.tex<CR>
" Some basics:

nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
vnoremap . :normal .<CR>
" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Spell-check set to <leader>o, 'o' for 'orthography':
"	map <leader>o :setlocal spell! spelllang=es_es<CR>
" Activar la corrección ortográfica
map <leader>dc :setlocal spell! spelllang=ca<CR>
map <leader>de :setlocal spell! spelllang=es<CR>
map <leader>da :setlocal spell! spelllang=en<CR>

" Nerd tree
map <leader>n :Vexplore<CR>
map <leader>nn :Hexplore<CR>


" vimling:
nm <leader><leader>d :call ToggleDeadKeys()<CR>
imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a
nm <leader><leader>i :call ToggleIPA()<CR>
imap <leader><leader>i <esc>:call ToggleIPA()<CR>a
nm <leader><leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Replace ex mode with gq
map Q gq

" Check file in shellcheck:
map <leader>s :!clear && shellcheck -x %<CR>

" Open my bibliography file in split
map <leader>b :vsp<space>$BIB<CR>
map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
map <leader>v :VimwikiIndex
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Habilitar mapeig estàndard del vimspector
"let g:vimspector_enable_mappings = 'HUMAN'

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Enable Goyo by default for mutt writing
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost bm-files,bm-dirs !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufRead,BufNewFile xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
" Recompile dwmblocks on config edit.
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
	highlight! link DiffText MatchParen
endif

" Navigating with guides
inoremap <leader>gui <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

" Ressaltar columna
map <leader>rc :set cuc!<CR>

" Configuracions personalitzades segons tipus d'arxius
source ~/.dotfiles/nvim/keys/keymapslatex.vim
source ~/.dotfiles/nvim/keys/keymapshtml.vim
source ~/.dotfiles/nvim/keys/keymapsmd.vim
source ~/.dotfiles/nvim/keys/keymapscss.vim
source ~/.dotfiles/nvim/keys/keymapsphp.vim
source ~/.dotfiles/nvim/keys/keymapsjs.vim
source ~/.dotfiles/nvim/keys/mappings.vim

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
	if s:hidden_all  == 0
		let s:hidden_all = 1
		set noshowmode
		set noruler
		set laststatus=0
		set noshowcmd
	else
		let s:hidden_all = 0
		set showmode
		set ruler
		set laststatus=2
		set showcmd
	endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>

" Activar sintaxis completa
:set omnifunc=syntaxcomplete#Complete
