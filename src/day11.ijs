load <'utils.ijs'

getin=: "."0 readin

NB. Surround matrix y with constant x
NB. y = input matrix
NB. x = padding constant
pad=: [,.~ [,~ [,. ,

flash=: ((9&>:) *. (0&<)) * ((1 1 ,: 3 3) (+/@,);._3 (0&pad)@(9&<)) + ]

NB. Increase the energy level and flash until no energy levels are greater than 9
step=: flash^:_ @: >:

NB. y = input
NB. x = number of steps
part1=: 4 : '(+/)@(0&=)@, step^:(i.x) y'

inx=: getin 'inputs/day-11-example.txt'
assert 204 = 11 part1 inx
assert 1656 = 101 part1 inx

assert 1594 = 101 part1 in=. getin 'inputs/day-11.txt'

NB. Returns 1 if all elements are equal
NB. y = input (infinite rank)
alleq=: 1&=@#@~.@,

part2=: [: <:@# [: step^:(-.@alleq)^:(<_) ]

assert 195 = part2 inx=. getin 'inputs/day-11-example.txt'

assert 437 = part2 in=. getin 'inputs/day-11.txt'
