" java sources
set cindent " Enables automatic C program indenting
set makeprg=javac\ %  " Set make prog. 4 :make :)
set number " Print the line number in front of each line.
abbreviate println System.out.println("");<esc>hhi
set include=^#\s*import
set includeexpr=substitute(v:fname,'\\.','/','g')
"autocmd BufRead *.java copen 10

