" latex files
" http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
set spell " chwck spellimg mistakes ;)
set spelllang=en_gb " chwck spellimg mistakes ;)
"set textwidth=0
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set shiftwidth=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
map <F7> :w<CR>:make %<<CR>
map <F8> :!evince %<.pdf &<CR>
set foldcolumn=5

" Vim-latex settings
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FormatDependency='dvi,ps,pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf' 
let g:Imap_UsePlaceHolders=0
let g:Tex_UseMakefile=1
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -file-line-error-style $*' " http://linuxwisdom.blogspot.com/2007/08/fixing-latex-suites-jump-to-error.html
let g:Tex_CompileRule_pdf = 'make' " http://linuxwisdom.blogspot.com/2007/08/fixing-latex-suites-jump-to-error.html

