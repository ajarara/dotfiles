    set nocompatible
    filetype on
    filetype plugin on
    filetype indent on

    syntax on

    set hidden

    set lazyredraw
    set showmode
    set wildmenu

    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    " set shell=/bin/sh
    set showcmd
    let mapleader = "\<Space>"
    let &packpath = &runtimepath

    nnoremap <leader>ee :e $MYVIMRC<CR>
    nnoremap <leader>es :so $MYVIMRC<CR>
    nnoremap <leader>ep :PlugInstall<CR>
    nnoremap <leader>p :Files ~/proj/<CR>
    nnoremap <leader>b :Buffers<CR>

    " Maybe it's a fine idea to degrade gracefully to vim, though I'm not sure
    " I'll ever need to do that on my personal machine, and if I ever need to
    " edit remote I'd just use sshfs
    if has('nvim')
      nnoremap <leader>t :term<CR> i
      tnoremap <Esc> <C-\><C-n>
    endif

    if executable('ag')
      let g:ackprg = 'ag --vimgrep'
    endif

    function! s:find_git_root()
      return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    endfunction

    command! ProjectFiles execute 'Files' s:find_git_root()

    call plug#begin(stdpath('data') . '/plugged')

    Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
    	\ 'do': 'bash install.sh'
	\ }
    Plug 'LnL7/vim-nix'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'udalov/kotlin-vim'
    Plug 'mileszs/ack.vim'

    call plug#end()


    let g:LanguageClient_serverCommands = {
	\ 'kt': ['~/Documents/projects/KotlinLanguageServer/server/build/scripts/kotlin-language-server'],
	\ }
