load <'utils.ijs'  NB. readin
getin=: a: -.~ <@". readin@]
calls=: 0&{::
boards=: _5 [\ >@}.
winseq=: (/: ,. /:~)@(>:@(<./)@(>./"1 , >./)"_1@i.)
score=: 1 : '(c {:@{. x) * +/ (, b { y) -. (c {. x) [ ''b c''=. x u @ winseq y'
part1=: calls {. score boards
part2=: calls {: score boards
