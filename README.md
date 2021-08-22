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
  - [ ] `nonop`
  - [ ] `nonmac`
  - [ ] `nonsyntax`
- [ ] Declaration
  - [ ] `global`
  - [ ] `lvars`
  - [ ] `vars`
  - [ ] `constant`
  - [ ] `lconstant`
- [ ] Varslist
  - [ ] `macro`
  - [ ] `syntax`
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
- [ ] Jump: `goto <word>`
- [ ] Iterative (i)
  - [ ] `for`
  - [ ] `step`
  - [ ] `till`
  - [ ] `do`
  - [ ] `endfor`
- [ ] Iterative (ii)
  - [ ] `while`
  - [ ] `until`
  - [ ] `for`
  - [ ] `in`
  - [ ] `on`
  - [ ] `from`
  - [ ] `by`
  - [ ] `to`
  - [ ] `foreach`
  - [ ] `forevery`
  - [ ] `in`
  - [ ] `repeat`
  - [ ] `times`
  - [ ] `forever`
- [ ] Conditional
  - [ ] `if`
  - [ ] `unless`
  - [ ] `elseif`
  - [ ] `elseunless`
  - [ ] `else`
  - [ ] `then`
  - [ ] `endif`
  - [ ] `endunless`
- [ ] Boolean expression
  - [ ] `and`
  - [ ] `or`
- [ ] Operator expression
- [ ] Function application
