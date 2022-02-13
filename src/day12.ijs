load <'utils.ijs'

getin=: [: (] , |."1) [: ({. , {:)"1 [: ;: readin ]

NB. Connections to a given vertex x in graph y
connects=: ({:"1)@] #~ ] (E. {."1)~ [

NB. Flag all lower case characters in y
issmall=: (a. {~ 97 + i.26) e.~ ]

NB. Filter small caves from graph y
filtsm=: (] #~ ((+./)@:issmall)&>)@:~.@:(('start';'end') -.~ ])@:,

NB. Count paths from x to y in a graph satisfying condition u
dfs=: 1 : 0
(a: u dfs y)
:
cave=. y
seen=. x
if. cave = (<'end') do. 1 return. end.
if. (cave e. seen) do.
  if. (cave = (<'start')) do. 0 return. end.
  if. (cave u (seen (e. # [) smcaves)) do. 0 return. end.
end.
+/ ((seen , cave) u dfs ])"1 0 (y connects graph)
)

part1=: 3 : 'e. dfs (<''start'') [ smcaves=: filtsm graph=: y'

assert 10  = part1 inx=. getin 'inputs/day-12-example-1.txt'
assert 19  = part1 inx=. getin 'inputs/day-12-example-2.txt'
assert 226 = part1 inx=. getin 'inputs/day-12-example-3.txt'

assert 4304 = part1 in=. getin 'inputs/day-12.txt'

part2=: 3 : '((<:@:# > +/)@:~:@:,) dfs (<''start'') [ smcaves=: filtsm graph=: y'

assert 36   = part2 inx=. getin 'inputs/day-12-example-1.txt'
assert 103  = part2 inx=. getin 'inputs/day-12-example-2.txt'
assert 3509 = part2 inx=. getin 'inputs/day-12-example-3.txt'

assert 118242 = part2 in=. getin 'inputs/day-12.txt'
