load 'stats/base'
load <'utils.ijs'

getin=: [: , ". readin

part1=: [: +/ |@(] - median)

assert 37 = part1 inx=. getin 'inputs/day-07-example.txt'

assert 329389 = part1 in=. getin 'inputs/day-07.txt'

part2=: [: x:@+/ -:@(>: * ])@(] |@- <.@mean)

assert 170 = part2 inx=. getin 'inputs/day-07-example.txt'

assert 86397080 = part2 in=. getin 'inputs/day-07.txt'
