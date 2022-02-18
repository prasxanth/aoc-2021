load 'stats/base'
load <'utils.ijs'  NB. readin
getin=: [: , ". readin
part1=: [: +/ |@(] - median)
part2=: [: x:@+/ -:@(>: * ])@(] |@- <.@mean)
