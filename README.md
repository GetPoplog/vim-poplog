# vim-poplog

**WARNING: WORK IN PROGRESS**

This project adds support for the [`pop11` language](https://getpoplog.github.io/)
to the Vim editor. It handles syntax highlighting for `*.p` files.

## Installation
We recommend you use [Plug](https://github.com/junegunn/vim-plug) or another vim
plugin manager.

For example, using Plug you would add the following to your `~/.vimrc`:
```vim
Plug 'GetPoplog/vim-poplog'
```

## Syntax coverage
Each part here corresponds to a railroad diagram from "Pop-11: A practical Language for Artificial Intelligence" (R. Barrett, A. Ramsay, A. Sloman).
The syntax in this book is out of date, but it is a good starting point.

Once a railroad diagram has been 
- [ ] Statement
  - [ ] `;`
  - [ ] `=>`
  - [ ] `==>`
- [ ] Definition
  - [ ] `define`
  - [ ] `enddefine`
- [ ] Assignment
  - [ ]  `->`
  - [ ]  `->>`
  - [ ]  `-->`
- [ ] Variable
  - [x] `nonop`
  - [x] `nonmac`
  - [x] `nonsyntax`
- [x] Declaration
  - [x] `global`
  - [x] `lvars`
  - [x] `vars`
  - [x] `constant`
  - [x] `lconstant`
- [x] Varslist
  - [x] `macro`
  - [x] `syntax`
- [ ] Sequence
  - [ ] `,`
  - [ ] `;`
  - [ ] `=>`
  - [ ] `==>`
- [ ] Literal
- [ ] Construct
  - [ ] List construct 
    - [ ] `[]`
    - [ ] List segment
      - [ ] `[% <Sequence> %]`
  - [ ] Vector construct
    - [ ] `{}`
  - [ ] Pattern construct
    - [ ]  `[]`
    - [ ] Pattern segment
    - [ ] `?`
    - [ ] `??`
    - [ ] `=`
    - [ ] `==`
- [ ] Label: `<word>:`
- [x] Jump: `goto <word>`
- [x] Iterative (i)
  - [x] `for`
  - [x] `step`
  - [x] `till`
  - [x] `do`
  - [x] `endfor`
- [x] Iterative (ii)
  - [x] `while`
  - [x] `until`
  - [x] `for`
  - [x] `in`
  - [x] `on`
  - [x] `from`
  - [x] `by`
  - [x] `to`
  - [x] `foreach`
  - [x] `endforeach`
  - [x] `forevery`
  - [x] `endforevery`
  - [x] `repeat`
  - [x] `endrepeat`
  - [x] `times`
  - [x] `forever`
- [x] Conditional
  - [x] `if`
  - [x] `unless`
  - [x] `elseif`
  - [x] `elseunless`
  - [x] `else`
  - [x] `then`
  - [x] `endif`
  - [x] `endunless`
- [x] Boolean expression
  - [x] `and`
  - [x] `or`
- [ ] Operator expression
- [ ] Function application

## Further reading

- See `ref syntax` for a list of syntax words in pop11.
- See [Your own syntax highlighted](https://vim.help/44-your-own-syntax-highlighted) 
  for an excellent guide on writing vim syntax files.

