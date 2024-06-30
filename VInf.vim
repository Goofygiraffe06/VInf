function! Info()
    let extension = expand('%:e')
    let filename = expand('%:t')
    let os_name = substitute(system('uname -s'), '\n', '', '')
    let architecture = substitute(system('uname -m'), '\n', '', '')
    let kernel_version = substitute(system('uname -r'), '\n', '', '')
    let datetime = strftime("%Y-%m-%d %H:%M:%S")
    let author = substitute(system('whoami'), '\n', '', '')
    let compilers = {
    \ 'c': ['gcc', 'gcc --version | head -n 1'],
    \ 'cpp': ['g++', 'g++ --version | head -n 1'],
    \ 'java': ['javac', 'javac -version 2>&1'],
    \ 'asm': ['nasm', 'nasm -v | head -n 1'],
    \ }
    
    let compiler_info = get(compilers, extension, ['Unknown compiler', ''])
    let compiler = compiler_info[0]
    let compiler_version = substitute(system(compiler_info[1]), '\n', '', '')
    
    let comment_syntax = ';'
    let info = comment_syntax . " Compiled on " . os_name . " (" . architecture . ")\n"
    let info .= comment_syntax . " Author: " . author . "\n"
    let info .= comment_syntax . " Kernel: " . kernel_version . "\n"
    let info .= comment_syntax . " Date: " . datetime . "\n"
    let info .= comment_syntax . " File: " . filename . "\n"
    let info .= comment_syntax . " Compiler: " . compiler . " (" . compiler_version . ")\n"
    
    execute '1put =info'
endfunction
command! VInf call Info()

