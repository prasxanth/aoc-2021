load <'utils.ijs'  NB. readin
getin=: "."0 readin
pad=: [,.~ [,~ [,. ,
flash=: ((9&>:) *. (0&<)) * ((1 1 ,: 3 3) (+/@,);._3 (0&pad)@(9&<)) + ]
step=: flash^:_ @: >:
part1=: 4 : '(+/)@(0&=)@, step^:(i.x) y'
alleq=: 1&=@#@~.@,
part2=: [: <:@# [: step^:(-.@alleq)^:(<_) ]
