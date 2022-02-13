load <'utils.ijs'

pairs=: _2 [\ '()[]{}<>'

NB. Replace characters with empty string
NB. y = input string
NB. x = boxed list of characters to remove
rmchars=: ] rplc [: , (<'') ,.~ [

NB. Filter corrupt or incomplete entries
NB. y = input with all pairs removed from each entry
NB. x = 0 (incomplete) and 1 (corrupt)
filterr=: ] #~ [ = [: +./"1 (({:"1 pairs) e. ])&>

getin=: [: ((<"1 pairs) rmchars ])&.> < readin

NB. Corrupt entry scores
corrscrs=:(')';'3';']';'57';'}';'1197';'>';'25137')

NB. Get first illegal (closing) character in entry
NB. y = boxed character list (superset or subset of pairs)
illchar=: [: {. (<"0 {."1 pairs) rmchars ]

NB. Array with error scores for corrupt entries
NB. y = boxed character list (superset or subset of pairs)
corrupt=: ".@(] rplc&corrscrs)@illchar

part1=: [: +/ [: corrupt&> (1: filterr ])

assert 26397 = part1 inx=. getin 'inputs/day-10-example.txt'

assert 370407 = part1 in=. getin 'inputs/day-10.txt'

NB. Incomplete entry scores
incmpscrs=:('(';'1';'[';'2';'{';'3';'<';'4')

NB. Array with scores for incomplete entries
incomplete=: ([: {. (+ 5&*)/\.)@:("."0)@(] rplc&incmpscrs)

part2=: [: (<.@-:@# { /:~) [: incomplete&> (0: filterr ])

assert 288957 = part2 inx=. getin 'inputs/day-10-example.txt'

assert 3249889609 = part2 in=. getin 'inputs/day-10.txt'
