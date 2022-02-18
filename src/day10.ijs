load <'utils.ijs'  NB. readin
pairs=: _2 [\ '()[]{}<>'
rmchars=: ] rplc [: , (<'') ,.~ [
filterr=: ] #~ [ = [: +./"1 (({:"1 pairs) e. ])&>
getin=: [: ((<"1 pairs) rmchars ])&.> < readin
corrscrs=:(')';'3';']';'57';'}';'1197';'>';'25137')
illchar=: [: {. (<"0 {."1 pairs) rmchars ]
corrupt=: ".@(] rplc&corrscrs)@illchar
part1=: [: +/ [: corrupt&> (1: filterr ])
incmpscrs=:('(';'1';'[';'2';'{';'3';'<';'4')
incomplete=: ([: {. (+ 5&*)/\.)@:("."0)@(] rplc&incmpscrs)
part2=: [: (<.@-:@# { /:~) [: incomplete&> (0: filterr ])
