vars x = 1, y = 2, z = 3;
pr('x ');
x =>
pr('y ');
y =>
pr('z ');
z =>

;;; Conditionals
if x then
    pr('hi\n');
endif;

if x then
    pr('x\n');
elseif y then
    pr('y\n');
else
    pr('z\n');
endif;

unless x then
    pr('not x\n');
elseif y then
    pr('y\n');
elseunless x then
    pr('not x\n');
else
    pr('something else');
endunless;

define laugh();
    lvars x = 2;
    l: ppr("ho");
    x - 1 -> x;
    if x > 0 then
        goto l;
    endif;
enddefine;
laugh();


if x and y then
    pr('x and y');
elseif x or y then
    pr('x or y');
endif;

lvars list;
[% 1, 2, 3, 4 %] -> list;
switchon hd(list) =
  case 1 orcase 2 then 1 =>
  notcase 3 then 2 =>
  case 3 andnotcase 4 then 3 =>
  else 4 =>
endswitchon;

;;; Iterations
5 -> x;
while x > 0 do
    x - 1 -> x;
    pr('x:'><x><'\n');
    quitloop
endwhile;
pr('\n');

3 -> x;
until x = 0 do
    x - 1 -> x;
    pr('x:'><x><'\n');
enduntil;

repeat 10 times pr(newline) endrepeat;
if false then
    repeat forever [x] => endrepeat;
endif;

lvars i;
for i in [% 1,2,3,4 %] do
    i =>
endfor;
for i on [a b c] do x => endfor;
for i from 0 by 2 to 10 do i => endfor;
for i by 2 to 10 do i => endfor;
for i to 10 do i => endfor;
for 1->x step x+1->x till x > 10 do spr(x); endfor;

vars database;
[
    [1 ison 2] [2 ison 3]
    [a ison b][b ison c] [d ison e] [e ison f] [g ison h] [a ison i]
] -> database;

vars l;
[[a is big] [b is small] [c is big] [d is small]] -> l;
foreach [?x is big] in l do it=> [therefore ^x is heavy] => endforeach;

forevery [[?x ison ?y:isword][?y ison ?z]] do
    them =>
    [^x is above ^z] =>
endforevery;

[% foreach [?x] in [[1], [3], [5], [7], [9]] do x endforeach %] =>
