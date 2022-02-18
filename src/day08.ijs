load <'utils.ijs'  NB. readin
getin=: [: /:~&.> ;: readin
ndiglen=: [: +/ [: , [ e.~ #&> @ ]
part1=: (2 3 4 7) ndiglen _4&{."1@]
tbluids=: _3 ]\ 6 2 3 2 2 2 5 1 2 5 2 3 4 2 4 5 1 3 6 1 3 3 2 2 7 2 4 6 2 4
getids=: ([: #&> ]) ,. ] +/@e.&>/ (0 2&{)@(/: #&>)@[
decode=: 10 #. [ i. (10&{. getids _4&{.)@]
part2=: [: +/ (tbluids decode ])"1
