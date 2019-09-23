" Basics
set nocompatible
colorscheme dracula
syntax on
set number
set scrolloff=5
set noerrorbells novisualbell
set hidden
set mouse=a

" Whitespace
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
set autoindent smartindent

" Autocomplete
set completeopt=longest,menuone

" Searching
set incsearch hlsearch ignorecase smartcase

" Buffers
set fillchars+=vert:\ " Don't display pipes when splitting window

" Performance
set lazyredraw

" Status Line
set laststatus=2

set statusline=
set statusline+=%#StatusFileMeta#               " Colours defined in ~/.vim/colors
set statusline+=\ %n%M%R\                       " buf #, mod, ro
set statusline+=%#StatusFileName#
set statusline+=\ %-F\                          " full filename
set statusline+=%=                              " begin right align
set statusline+=%#StatusFileMeta#
set statusline+=\ %{strlen(&ft)?&ft:'none'},    " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},    " encoding
set statusline+=%{&fileformat}\                 " file format
set statusline+=%#StatusFileLocation#
set statusline+=%8(%l,%c%)\                     " line and column
set statusline+=%P\                             " percentage of file

