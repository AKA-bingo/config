""""""""""""""vim包管理配置"""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"主题设置
"set background=dark
colorscheme molokai
let g:molokai_original = 1

"设置
syntax on
set nu
set encoding=utf-8
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

"设置光标定位行列
set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=NONE guifg=NONE

"按键映射
:imap jk <Esc>
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
noremap H ^
noremap L $

"文件创建添加头部信息
autocmd BufNewFile *.py,*.sh, exec ":call SetTitle()"  
let $author_name = "BinGo"  
let $author_email = "icebin000@gmail.com"  

func SetTitle()  
    if &filetype == 'sh'  
        call setline(1,"\###################################################################")  
        call append(line("."), "\# File Name: ".expand("%"))  
        call append(line(".")+1, "\# Author: ".$author_name)  
        call append(line(".")+2, "\# mail: ".$author_email)  
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))  
        call append(line(".")+4, "\#=============================================================")  
        call append(line(".")+5, "\#!/bin/bash")  
        call append(line(".")+6, "")  
    else  
        call setline(1,"\###################################################################")  
        call append(line("."), "\# File Name: ".expand("%"))  
        call append(line(".")+1, "\# Author: ".$author_name)  
        call append(line(".")+2, "\# mail: ".$author_email)  
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))  
        call append(line(".")+4, "\#=============================================================")  
        call append(line(".")+5, "\#!/usr/bin/python")  
        call append(line(".")+6, "")  
    endif  
endfunc  
