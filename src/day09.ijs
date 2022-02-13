load <'utils.ijs'

getin=: "."0 readin

NB. Find low points in matrix y
NB. Low points = locations that are lower than any of 
NB. its adjacent (up, down, left, and right) locations
lowpoints=: ] < [: <./ (_1&* , ])@=@i.@2: (|.!.9) ]

part1=: [: +/ [: , >:@] * lowpoints

assert 15 = part1 inx=. getin 'inputs/day-09-example.txt'

assert 548 = part1 in=. getin 'inputs/day-09.txt'

findadj=: (|."1@|:@:>. * * 1&(|.!.0))^:4^:_ @ (*>:@i.@$)

NB. Basin sizes in descending order
bsizes=: (\:~)@(#/.~)@(] #~ 0 ~: ]) ,@findadj@(9&~:)

part2=: */ 3&{. bsizes

assert 1134 = part2 inx=. getin 'inputs/day-09-example.txt'

assert 786048 = part2 in=. getin 'inputs/day-09.txt'
