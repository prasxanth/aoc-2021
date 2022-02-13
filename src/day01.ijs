load <'utils.ijs'

getin=: ". readin

NB. Calculate number of increases
NB. y = data
NB. x = moving window size
ninc=: +/ @ (2 </\ +/\)

part1=: 1&ninc

assert 7 = part1 inx=. getin 'inputs/day-01-example.txt'

assert 1602 = part1 in=. getin 'inputs/day-01.txt'

part2=: 3&ninc

assert 7 = part1 inx=. getin 'inputs/day-01-example.txt'

assert 1633 = part2 in=. getin 'inputs/day-01.txt'
