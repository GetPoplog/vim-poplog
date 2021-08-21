" Vim syntax file
" Language: Pop11
" Maintainer: Will Price
" Latest Revision: 21 August 2021

if exists("b:current_syntax")
    finish
endif

" Definition keywords
syn keyword pop11LanguageKeywords define enddefine 
syn keyword pop11LanguageKeywords vars lvars then
" Control keywords
syn keyword pop11LanguageKeywords if then endif
syn keyword pop11LanguageKeywords and or
syn keyword pop11LanguageKeywords unless endunless
syn keyword pop11LanguageKeywords for from to do endfor
syn keyword pop11LanguageKeywords until enduntil
" Import keywords
syn keyword pop11LanguageKeywords uses

syn match pop11Number '[-+]?\d+'
syn match pop11Number '[-+]?\d+\.\d*'
