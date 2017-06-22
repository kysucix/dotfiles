" latex files
" http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
set spell " chwck spellimg mistakes ;)
set spelllang=en_us " chwck spellimg mistakes ;)
set textwidth=80
set formatoptions=
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set shiftwidth=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
"map <F7> :w<CR>:make %<<CR>
"map <F8> :!evince %<.pdf &<CR>
set foldcolumn=5
set conceallevel=0 " Disable unicode preview

" Vim-latex settings
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FormatDependency='dvi,ps,pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Imap_UsePlaceHolders=0
let g:Tex_UseMakefile=1
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -file-line-error-style $*' " http://linuxwisdom.blogspot.com/2007/08/fixing-latex-suites-jump-to-error.html
let g:Tex_CompileRule_pdf = 'make' " http://linuxwisdom.blogspot.com/2007/08/fixing-latex-suites-jump-to-error.html

set spell

" vimtex related config
let g:vimtex_complete_close_braces=1

  if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
  let g:ycm_semantic_triggers.tex = [
        \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
        \ 're!\\hyperref\[[^]]*',
        \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\(include(only)?|input){[^}]*',
        \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
        \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\usepackage(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\[A-Za-z]*',
        \ ]
set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()
set formatoptions+=t " enable automatic text wrapping
nmap <F12> <plug>(vimtex-compile)
nmap <F11> :%y+ VimtexCompile <CR>
nmap <F6> <plug>(vimtex-compile-selected)
nmap <F8> <plug>(vimtex-toc-toggle)
