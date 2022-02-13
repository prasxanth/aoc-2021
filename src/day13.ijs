load <'utils.ijs'

rplcxy=: rplc&('y=';'0 ';'x=';'';',';' ')
rawin=: 3 : '>&.> <;._1 (a: , ]) ({. ,&.> {:)"1 (".&.>) ;: rplcxy readin y'

procin=: <"1@|.@>@{:, {.

getin=: procin@rawin

NB. Fold point x across y
fold=: (] - |@:-~)`[@.(0: = ])

NB. Recursively apply folds x to series of points y
origami=: <@(>@[ (fold"0)~"1/ >@])/\.

NB. Creates grid of 0s with 1s (marks) at locations of points in y
marks=: 3 : '1 (|.&.> <"1 y) } (0 * i. |. >: >./ y)'

part1=: 3 : '+/ ~: > _2&{ origami y'

assert 17 = part1 inx=. getin 'inputs/day-13-example.txt'

assert 827 = part1 in=. getin 'inputs/day-13.txt'

part2=: 3 : '_ * -. >  marks ~. > @ {. origami y'

part2 in=. getin 'inputs/day-13.txt' NB. EAHKRECP

rplcxy=: rplc&('y=';'_';'x=';'';',';' ')
rawin=: 3 : '>&.> <;._1 (a: , ]) ({. ,&.> {:)"1 (".&.>) ;: rplcxy readin y'

marks=: 3 : '1 (|.&.> <"1 y) } (0 * i. |. >: >./ y)'

instrxns=: ,@(* * >:@|)

procin=: <"0@|.@instrxns&>@{: , marks&.>@{.

getin=: procin@rawin

fold=: 2 : '|.@(+./)@(u ,: v)'

foldh=: |.@}:@{. fold }.

foldv=: foldh&.|:

foldvh=: foldv`(|@[ foldh ]) @. (0 > [)

origami=: <@(>@[ foldvh >@])/\.

part1=: 3 : '+/ , > (_2&{) origami y'

assert 17 = part1 inx=. getin 'inputs/day-13-example.txt'

assert 827 = part1 in=. getin 'inputs/day-13.txt'

part2=: 3 : '_ * -. > @ {. origami y'

part2 in=. getin 'inputs/day-13.txt'
