" Name:             ~/.vimrc
" Summary:          My ~/.vimrc and configuration
" Maintainer:       Joshua T. Rowe
" Canonical Source: https://github.com/jtrowe/dotfiles
" License:          MIT License


" Turn on the Vim extras
set nocompatible

" Allow backspacing over anything I want
set backspace=eol,indent,start

" Save backup files.
set backup

" Insert spaces when the tab key is pressed.
set expandtab

" I like a big history
set history=1000

" Hightlight my searches.
set hlsearch

" Search as I type
set incsearch

" Maybe gvim only
" Always show a status line.
set laststatus=2

" Maybe gvim only
" Show the ruler
set ruler

" The minimum number of lines to keep above the cursor.
set scrolloff=2

" Set the shiftwidth to same as tabstops.
set shiftwidth=4

" Set the tabstops.
set tabstop=4

" Keep enough space at the end of a line for a diff to format nicely.
set textwidth=72

" Indent properly.
set autoindent
" Will not allow shifting of comment lines.
" set smartindent

" The last 100 file's marks are remembered.
" Up to 1000 lines of each register are saved.
" Disable the effect of hlsearch when loading the viminfo file.
" Store the viminfo file in the ~/.vim directory.
set viminfo='100,<1000,h,n~/.vim/viminfo

" Switch syntax highlighting on when vim has colors.
if &t_Co > 2 || has("gui_running")

    " Note: If the syntax command is not before the hi commands, the hi 
    " commands will be ignored.  I do not know why this happens.
    syntax on

    " Set a nice dark colorscheme.
    colorscheme elflord

    " Modify the colors from the scheme just a bit.
    " Set the backround to black.
    highlight Normal ctermbg=Black guibg=Black
    highlight NonText guibg=Black

endif

" Autocommands for Makefiles
augroup Makefiles
    " Remove ALL autocommands for the current group.
    :autocmd!

    :autocmd BufEnter  ?akefile*    set noexpandtab
    :autocmd BufLeave  ?akefile*    source ~/.vimrc
augroup END

" Autocommands for HTML/XML
augroup Markup
    " Remove ALL autocommands for the current group.
    :autocmd!

    :autocmd BufEnter  *.html   set tabstop=2 shiftwidth=2 textwidth=300
    :autocmd BufEnter  *.xhtml  set tabstop=2 shiftwidth=2 textwidth=300
    :autocmd BufEnter  *.xml    set tabstop=2 shiftwidth=2 textwidth=300
    :autocmd BufEnter  *.xsl    set tabstop=2 shiftwidth=2 textwidth=300
    :autocmd BufEnter  *.xslt   set tabstop=2 shiftwidth=2 textwidth=300
    :autocmd BufLeave  *.html   source ~/.vimrc
    :autocmd BufLeave  *.xhtml  source ~/.vimrc
    :autocmd BufLeave  *.xml    source ~/.vimrc
    :autocmd BufLeave  *.xsl    source ~/.vimrc
    :autocmd BufLeave  *.xslt   source ~/.vimrc
augroup END

" Autocommands for tab separated value
augroup TSV
    " Remove ALL autocommands for the current group.
    :autocmd!

    :autocmd BufEnter  *.tsv   set noexpandtab textwidth=300
    :autocmd BufLeave  *.tsv   source ~/.vimrc
augroup END

