set nu
set encoding=utf-8
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
:imap jk <Esc>
:imap qq $
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
noremap H ^
noremap L $
syntax on

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
