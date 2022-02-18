load <'utils.ijs'  NB. readin
getin=: ((0&{::)@{.@] ; <@([: _2&(<\)"1 [: (0 1 0 6 6 1 { ])&> 2&}.))@(<"1 readin@])
stoctrix=: [: |: {."1 e./"1 }."1
tmpltrix=: ({."1)@[ e./"1 0 (2&(<\)@])
mp=: +/ . *
mpow=: 4 : 'mp/ mp~^:(I.|.#:y) x'
polymerize=: 4 : '(((stoctrix r) mpow y) mp ])"1 (r tmpltrix t) [ ''t r''=. x' NB. t = template, r = rules
summarize=: 4 : '(r addendum t) + ({.&.> {."1 r) +//. y [ ''t r''=. x' NB. t = template, r = rules
addendum=: ([: ~. ({.&.>)@({."1)@[) e. {:@(;/)@]
range=: [: (>./ - <./) [: (] #~ 0: < ]) [ summarize +/@:polymerize
part1=: range&10
part2=: range&40
