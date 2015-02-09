" Vim syntax file
" Language: Nix
" Maintainer: Tim Jaeger

if exists("b:current_syntax")
    finish
endif

syn match nixComment "#.*$"

syn keyword nixBool true false !
syn match nixInt '\s\+\d\+'
syn region nixString start='"' end='"'

syn keyword nixOperator + - * / = == !=
syn keyword nixFunction import map

syn region nixList start='\[' end='\]' fold transparent
syn region nixCompound start='{' end='}' fold transparent

syn keyword nixConditional if then else

hi def link nixComment Comment

hi def link nixBool Boolean
hi def link nixInt Number
hi def link nixString String

hi def link nixOperator Operator
hi def link nixFunction Function

hi def link nixConditional Conditional
