load <'utils.ijs'

getin=: [: /:~&.> ;: readin

NB. Count number of digits of given length
NB. y = boxed list of coded digits
NB. x = list of digit lengths
NB. output is count of digits of lengths x in y
ndiglen=: [: +/ [: , [ e.~ #&> @ ]

part1=: (2 3 4 7) ndiglen _4&{."1@]

assert 26 = part1 inx=. getin 'inputs/day-08-example.txt'

assert 284 = part1 in=. getin 'inputs/day-08.txt'

NB. Table of unique identifiers
NB. A digit can be uniquely identified by length, 
NB. intersection with 1 and intersection with 4
tbluids=: _3 ]\ 6 2 3 2 2 2 5 1 2 5 2 3 4 2 4 5 1 3 6 1 3 3 2 2 7 2 4 6 2 4

tbluids

NB. Get identifiers of output x based on encodings in y
NB. y = boxed list of outputs
NB. x = boxed list of encoded entries (#y = 10)
getids=: ([: #&> ]) ,. ] +/@e.&>/ (0 2&{)@(/: #&>)@[

NB. Return decimal number of output in y
NB. y = encodings (first 10 columns) and outputs to decode (last four columns)
NB. x = lookup table with unique identifiers for digits
decode=: 10 #. [ i. (10&{. getids _4&{.)@]

part2=: [: +/ (tbluids decode ])"1

assert 61229 = part2 inx=. getin 'inputs/day-08-example.txt'

assert 973499 = part2 in=. getin 'inputs/day-08.txt'
