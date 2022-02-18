load <'utils.ijs'  NB. readin
getin=: [: (] , |."1) [: ({. , {:)"1 [: ;: readin ]
connects=: ({:"1)@] #~ ] (E. {."1)~ [
issmall=: (a. {~ 97 + i.26) e.~ ]
filtsm=: (] #~ ((+./)@:issmall)&>)@:~.@:(('start';'end') -.~ ])@:,
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
part2=: 3 : '((<:@:# > +/)@:~:@:,) dfs (<''start'') [ smcaves=: filtsm graph=: y'
