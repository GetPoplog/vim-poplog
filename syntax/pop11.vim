" Vim syntax file
" Language: Pop11
" Maintainer: Will Price
" Latest Revision: 21 August 2021

" NOTE: Remember that when there are ties, later rules win.
" Keywords always win over regions and matches.

if exists("b:current_syntax")
    finish
endif

syn keyword pop11Operator and or
syn keyword pop11Operator nonop nonmac nonsyntax
hi def link pop11Operator Operator

" Definition keywords
syn keyword pop11Define define enddefine
syn keyword pop11Define procedure endprocedure
hi def link pop11Define Statement

syn keyword pop11Statement section endsection
syn keyword pop11Statement return returnif returnunless
syn keyword pop11Statement goto
syn keyword pop11Statement quitloop quitif quitunless nextloop
hi def link pop11Statement Statement

syn keyword pop11Booleans false true
hi def link pop11Booleans Boolean

syn keyword pop11LanguageKeywords global vars lvars lconstant constant
syn keyword pop11LanguageKeywords uses
syn keyword pop11LanguageKeywords syntax
syn keyword pop11LanguageKeywords macro
hi def link pop11LanguageKeywords Statement

syn keyword pop11Label case notcase andcase orcase andnotcase ornotcase
hi def link pop11Label Label

syn keyword pop11Conditional if else then elseif elseunless endif
syn keyword pop11Conditional unless endunless
syn keyword pop11Conditional switchon endswitchon
hi def link pop11Conditional Conditional

syn keyword pop11Repeat for endfor
syn keyword pop11Repeat foreach endforeach
syn keyword pop11Repeat forevery endforevery
syn keyword pop11Repeat while endwhile
syn keyword pop11Repeat until enduntil
syn keyword pop11Repeat repeat endrepeat
syn keyword pop11Repeat forever do in on from by to till times step
hi def link pop11Repeat Repeat

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


syntax keyword pop11BuiltinFunction add alladd allpresent allremove appdata applist appproperty
syntax keyword pop11BuiltinFunction arrayvector arrayvector_bounds atom back atom back boundslist
syntax keyword pop11BuiltinFunction caller chain chainfrom chainto charin charout class_print
syntax keyword pop11BuiltinFunction clearstack compile conskey conspair consproc consprocto consword
syntax keyword pop11BuiltinFunction datakey datalist dataword delete dest destpair discin discout
syntax keyword pop11BuiltinFunction erase erasenum exitfrom exitto explode fast_back fast_front
syntax keyword pop11BuiltinFunction flush front frozval gensym
syntax keyword pop11BuiltinFunction pr ppr spr

syntax keyword pop11BuiltinFunction substring newmapping length isalphacode isuppercode isnumbercode string warning locchar hd tl
syntax keyword pop11BuiltinFunction syssearchpath sys_fname mishap sys_fname_name sys_file_match
hi link pop11BuiltinFunction Function

syntax keyword pop11Var it database them
hi link pop11Var Identifier

syn match pop11PreConditional display "^#_\(IF|ELSE\)"
syn match pop11PreConditionalMatch display "^#_ENDIF"
hi def link pop11PreConditionalMatch pop11PreConditional
hi def link pop11PreConditional PreCondit

" Import keywords

syn match pop11Number '[-+]?\d+'
syn match pop11Number '[-+]?\d+\.\d*'
hi def link pop11Number Constant

let b:current_syntax = "pop11"
