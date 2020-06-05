execute pathogen#infect()
                
syntax enable

set expandtab
set tabstop=2
set shiftwidth=2
set background=dark
set smartindent "horrible when copy&pasting"
set smarttab
"set textwidth=100
set number
colorscheme distinguished

"selecting a whole block based on indentation"
"function! SelectIndent ()
"  let temp_var=indent(line("."))
"  while indent(line(".")-1) >= temp_var
"    exe "normal k"
"  endwhile
"  exe "normal V"
"  while indent(line(".")+1) >= temp_var
"    exe "normal j"
"  endwhile
"endfun
"nmap <Space> :call SelectIndent()<CR>
"

"Markdown syntax highlighting"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown columns=65 linebreak
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
    augroup pandoc_syntax
        au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc
    augroup END

"IDE features with ctags"
set isfname-=/ 
map <F7> :let sourcereplacement=expand('%:t')<cr> :let sourcereplacement=substitute(sourcereplacement,".h",".cpp", "")<cr> :execute("tag ".sourcereplacement)<cr>
map <F8> :let mycurf=expand("<cfile>")<cr>  :execute("tag ".mycurf)<cr>


map <F5> <Esc>:w<CR>:!make<CR>
imap jk <Esc>
"latex sentence formatting"
"map Z vas5<vasgq>as<<)"
map Z vasgq)

" ignore these files when completing names and in Ex
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.bak,*.beam,*.aux,*.loc,*.lox,*.backup,*.toc
" " set of file name suffixes that will be given a lower priority when it
" comes to matching wildcards
set suffixes+=.old,*.log


function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^## .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^### .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^#### .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^##### .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^###### .*$'
        return ">6"
    endif
    return "="
endfunction
au BufEnter *.md setlocal foldexpr=MarkdownLevel()
au BufEnter *.md setlocal foldmethod=expr
