load <'utils.ijs'

getin=: [: , ". readin

NB. stochastic matrix
stoctrix=: (1 0) ,~ (0 0 0 0 0 0 1 0) ,. (e.@i. 8)

NB. Matrix product
mp=: +/ . *

NB. Raise matrix to nth power
NB. Source: https://code.jsoftware.com/wiki/Essays/Repeated_Squaring
mpow=: 4 : 'mp/ mp~^:(I.|.#:y) x'

NB. Count number of fish after N generations
NB. x = input/start state
NB. y = generations (integer)
nfish=: [: +/ stoctrix&mpow@] mp ([: <:@#/.~ (i.9) , [)

part1=: nfish

inx=. getin 'inputs/day-06-example.txt'
assert 26 = inx part1 18 
assert 5934 = inx part1 80

assert 360761 = 80 part1~ in=. getin 'inputs/day-06.txt'

part2=: nfish

assert 26984457539 = 256 part1~ inx=. getin 'inputs/day-06-example.txt'

assert 1632779838045 = 256 part2~ in=. getin 'inputs/day-06.txt'
