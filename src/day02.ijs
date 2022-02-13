load <'utils.ijs'

getin=: ;: readin

NB. Displacement vectors
NB. y = input
NB. Returns three column boolean mask matrix of size (|. $ y)
NB. for each direction
dirxns=: ('forward'; 'up'; 'down') E./"0 1 {."1

NB. Horizontal and vertical displacement vectors
NB. y = input
NB. Returns two column matrix
NB.   - Column 1 = horizonal displacement = forward
NB.   - Column 2 = vertical displacement = down - up
disp=: [: ({. ,. [: -/|.@}.) (".@>@{:"1@]) *"1 dirxns

part1=: 3 : '+/ h * +/ v [ v=. {:"1 d [ h=. {."1 d [ d=. disp y'

assert 150 = part1 inx=. getin 'inputs/day-02-example.txt'

assert 1868935 = part1 in=. getin 'inputs/day-02.txt'

part2=: 3 : '+/ h * +/ h * +/\ v [ v=. {:"1 d [ h=. {."1 d [ d=. disp y'

assert 900 = part2 inx=. getin 'inputs/day-02-example.txt'

assert 1965970888 = part2 in=. getin 'inputs/day-02.txt'
