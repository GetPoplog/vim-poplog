" Vim syntax file
" Language: Pop11
" Maintainer: Will Price
" Latest Revision: 21 August 2021

if exists("b:current_syntax")
    finish
endif

" Definition keywords
syn keyword pop11Define define enddefine
hi def link pop11Define Statement

syn keyword pop11Statement return
hi def link pop11Statement Statement

syn keyword pop11LanguageKeywords vars lvars then
syn keyword pop11LanguageKeywords uses
hi def link pop11LanguageKeywords Statement

syn keyword pop11Conditional if else then endif
syn keyword pop11Conditional unless endunless
hi def link pop11Conditional Conditional

syn keyword pop11Assignment -> ->>
hi def link pop11Assignment Operator

syn region pop11String matchgroup=pop11StringDelim start=+'+ skip=+\\'+ end=+'+
hi link pop11String String
syn region pop11Word matchgroup=pop11WordDelim start=+"+ skip=+\\"+ end=+"+
hi link pop11Word Constant

syn region pop11CommentSemiColons start=+;;;+ end=+$+
syn region pop11CommentCStyle start=+/\*+ end=+\*/+
hi link pop11CommentSemiColons Comment
hi link pop11CommentCStyle Comment


syn keyword pop11Repeat for endfor
syn keyword pop11Repeat until enduntil
syn keyword pop11Repeat switchon case endswitchon
hi def link pop11Repeat Repeat

syn keyword pop11PreConditional #_IF #_ELSE #_ENDIF
hi def link pop11PreConditional PreProc

" Import keywords

syn match pop11Number '[-+]?\d+'
syn match pop11Number '[-+]?\d+\.\d*'
hi def link pop11Number Constant

let b:current_syntax = "pop11"
