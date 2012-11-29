set cinoptions=:.,+.,t0,g0,p2s,(0,=.5s formatoptions=croql cindent shiftwidth=4 tabstop=4
let c_comment_strings=1   " I like highlighting strings inside C comments
"		let c_space_errors=1 " trailing white space and spaces before a <Tab>
let c_gnu=1 " GNU gcc specific items
let c_syntax_for_h=1 " use C syntax for *.h files, instead of C++
set cindent " Enables automatic C program indenting
set number " Print the line number in front of each line.
set autowrite
set tabstop=4
set softtabstop=4 " Number of spaces that a <Tab> counts for while performing editing  operations,like inserting a <Tab> or using <BS>.
set expandtab
set foldmethod=syntax
set iskeyword+=$,@ " none of these should be word dividers, so make them not be 
syn region myFold start="{" end="}" transparent fold

" Abbreviations when writing C/C++ code
abbreviate #i #include
abbreviate #d #define
abbreviate #e #endif

" Comment out a visually selected block (C++)
vmap C <C-G><C-BS>i/*  */<Left><Left><Left><C-[>p


