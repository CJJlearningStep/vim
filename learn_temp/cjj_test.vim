" 设置字体，这个字体比较喜欢，4号大小。
setlocal guifont=Lucida_Console:h14:cANSI

" 设置shiftwidth
setlocal shiftwidth=4

iabbrev dd <c-o>:call Set_info()

function! Set_info()
    call setline(line("."),"----------------------")
    call append(line("."),"---- 华丽的分割线 ----")
    call append(line(".")+1,"----------------------")
    normal Go
endfunction

iabbrev fun <c-o>:call Cjj_set_fun()

function! Cjj_set_fun()
    normal ivoid function_name(void)
    call append(line("."),"{")
    call append(line(".")+1,"	")
    call append(line(".")+2,"}")
" 这是设置非gui的对话框，gui对话框请用下面那个
"   let cjj_fun_name = input("请输入函数名：","")
    let cjj_fun_name = inputdialog("请输入函数名：","")
    exec "s?\\<function_name\\>?".cjj_fun_name."?"
    normal 2jA
endfunction




