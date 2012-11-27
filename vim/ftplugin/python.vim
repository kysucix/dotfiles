" python files
set expandtab " Use the appropriate number of spaces to insert a <Tab> (U know how python behave! ;)
set number " Print the line number in front of each line.
set autowrite " Write the contents of the file, if it has been modified, on each command
set tabstop=4 "Number of spaces that a <Tab> in the file counts for. (Bad 4 Makefiles!)
set shiftwidth=4 " set to the same as tabstop (see #4 in :help tabstop)
set softtabstop=4 " if it looks like a tab, we can delete it like a tab
set textwidth=0 " do not break lines when line lenght increases
set omnifunc=pythoncomplete#Complete
set tags+=~/.vim/pytags
set textwidth=80
set foldmethod=indent
set smarttab " Use the "shiftwidth" setting for inserting <TAB>s instead of the "tabstop" setting, when at the beginning of a line.
set expandtab " Insert spaces instead of <TAB> character when the <TAB> key is pressed. This is also the prefered method of Python coding, since Python is especially sensitive to problems with indenting which can occur when people load files in different editors with different tab settings, and also cutting and pasting between applications (ie email/news for example) can result in problems. It is safer and more portable to use spaces for indenting.
set autoindent   " new line has indentation equal to previous line
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class " The following line sets the smartindent mode for *.py files. It means that after typing lines which start with any of the keywords in the list (ie. def, class, if, etc) the next line will automatically indent itself to the next level of indentation

