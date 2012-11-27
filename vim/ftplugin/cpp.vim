" c++ sources
set cindent " Enables automatic C program indenting
set number " Print the line number in front of each line.
set autowrite

" Abbreviations when writing C/C++ code
abbreviate #i #include
abbreviate #d #define
abbreviate #e #endif

" Comment out a visually selected block (C++)
vmap C <C-G><C-BS>i/*  */<Left><Left><Left><C-[>p
