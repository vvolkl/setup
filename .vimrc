execute pathogen#infect()

syntax enable

set expandtab
set tabstop=4
set shiftwidth=2
set background=dark
"set smartindent" "horrible when copy&pasting"
"set smarttab"
colorscheme distinguished

"really nice: selecting a whole block based on indentation"
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


map <F5> <Esc>:w<CR>:!make<CR>
map Z vas5<vasgq>as<<)
set shiftwidth=2

" ignore these files when completing names and in Ex
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.bak,*.beam,*.aux,*.loc,*.lox,*.backup,*.toc
" " set of file name suffixes that will be given a lower priority when it
" comes to matching wildcards
set suffixes+=.old,*.log

imap jk <Esc>
