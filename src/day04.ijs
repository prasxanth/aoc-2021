load <'utils.ijs'

getin=: a: -.~ <@". readin@]

calls=: 0&{::
boards=: _5 [\ >@}.

winseq=: (/: ,. /:~)@(>:@(<./)@(>./"1 , >./)"_1@i.)

NB. Calculate score
NB. y = boards
NB. x = calls
NB. u = monadic function to select nth winning board
score=: 1 : '(c {:@{. x) * +/ (, b { y) -. (c {. x) [ ''b c''=. x u @ winseq y'

part1=: calls {. score boards

assert 4512 = part1 inx=. getin 'inputs/day-04-example.txt'

assert 2496 = part1 in=. getin 'inputs/day-04.txt'

part2=: calls {: score boards

assert 1924 = part2 inx=. getin 'inputs/day-04-example.txt'

assert 25925 = part2 in=. getin 'inputs/day-04.txt'
