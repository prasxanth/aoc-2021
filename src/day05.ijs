load <'utils.ijs'

getin=: ".@(rplc&('->';',:';',';' ')) readin

NB. Generate sequence in closed interval (x, y)
NB. x < y: Ascending  ]  5 seq 8  => 5 6 7 8
NB. x > y: Descending ] _2 seq _5 => _2 _3 _4 _5
NB. x = y: Constant   ]  0 seq 0  => 0
seq=: [ + (-@* * i.@>:@|)@-

NB. Interpolate points across coordinate endpoints
NB. y = N x 2 x 2 matrix of N points
NB.         2 x 2 submatrices are (x1 y1 ,: x2 y2) coordinates for each point
NB. Returns 2-column list of interpolated (x, y) pairs for all points
pts=: [: ; _2 <@|:@seq"1/\"_1 ]

NB. Count number of intersections between N lines
NB. y = N x 2 x 2 matrix of N points
NB.         2 x 2 submatrices are (x1 y1 ,: x2 y2) coordinates for each point
NB. x is minimum number of intersections
intersect=: [: +/ [ <: [: #/.~ pts

NB. Filter coordinates of vertical and horizontal lines
NB. y = N x 2 x 2 matrix of N points
NB.         2 x 2 submatrices are (x1 y1 ,: x2 y2) coordinates for each point
filtvh=: ] #~ (+./"1 @: =/)"_1

part1=: 2&intersect @ filtvh

assert 5 = part1 inx=. getin 'inputs/day-05-example.txt'

assert 7473 = part1 in=. getin 'inputs/day-05.txt'

part2=: 2&intersect

assert 12 = part2 inx=. getin 'inputs/day-05-example.txt'

assert 24164 = part2 in=. getin 'inputs/day-05.txt'
