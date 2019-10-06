    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath

    call plug#begin(stdpath('data') . '/plugged')

    Plug 'dense-analysis/ale'

    call plug#end()
