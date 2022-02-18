load <'utils.ijs'  NB. readin
getin=: ".@(rplc&('->';',:';',';' ')) readin
seq=: [ + (-@* * i.@>:@|)@-
pts=: [: ; _2 <@|:@seq"1/\"_1 ]
intersect=: [: +/ [ <: [: #/.~ pts
filtvh=: ] #~ (+./"1 @: =/)"_1
part1=: 2&intersect @ filtvh
part2=: 2&intersect
