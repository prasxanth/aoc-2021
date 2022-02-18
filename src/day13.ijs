load <'utils.ijs'  NB. readin

rplcxy=: rplc&('y=';'0 ';'x=';'';',';' ')
rawin=: 3 : '>&.> <;._1 (a: , ]) ({. ,&.> {:)"1 (".&.>) ;: rplcxy readin y'
procin=: <"1@|.@>@{:, {.
getin=: procin@rawin
fold=: (] - |@:-~)`[@.(0: = ])
origami=: ((fold"0)~"1/)&.>/\.
marks=: 3 : '1 (|.&.> <"1 y) } (0 * i. |. >: >./ y)'
part1=: 3 : '+/ ~: > _2&{ origami y'
part2=: 3 : '_ * -. >  marks ~. > @ {. origami y'

rplcxy=: rplc&('y=';'_';'x=';'';',';' ')
rawin=: 3 : '>&.> <;._1 (a: , ]) ({. ,&.> {:)"1 (".&.>) ;: rplcxy readin y'
marks=: 3 : '1 (|.&.> <"1 y) } (0 * i. |. >: >./ y)'
getin=: 3 : '(;/@,@|.@(] + *) i) , <(marks d) [ ''d i''=. rawin y'
fold=: 2 : '|.@(+./)@(u ,: v)~'
foldh=: |.@}:@{. fold }.
foldv=: foldh&.|:
foldvh=: foldv`([ foldh |@]) @. (0: > ])
origami=: (foldvh~)&.>/\.
part1=: 3 : '+/ , > (_2&{) origami y'
part2=: 3 : '_ * -. > @ {. origami y'

