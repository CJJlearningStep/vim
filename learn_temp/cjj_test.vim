" �������壬�������Ƚ�ϲ����4�Ŵ�С��
setlocal guifont=Lucida_Console:h14:cANSI

" ����shiftwidth
setlocal shiftwidth=4

iabbrev dd <c-o>:call Set_info()

function! Set_info()
    call setline(line("."),"----------------------")
    call append(line("."),"---- �����ķָ��� ----")
    call append(line(".")+1,"----------------------")
    normal Go
endfunction

iabbrev fun <c-o>:call Cjj_set_fun()

function! Cjj_set_fun()
    normal ivoid function_name(void)
    call append(line("."),"{")
    call append(line(".")+1,"	")
    call append(line(".")+2,"}")
" �������÷�gui�ĶԻ���gui�Ի������������Ǹ�
"   let cjj_fun_name = input("�����뺯������","")
    let cjj_fun_name = inputdialog("�����뺯������","")
    exec "s?\\<function_name\\>?".cjj_fun_name."?"
    normal 2jA
endfunction




