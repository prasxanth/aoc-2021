load <'utils.ijs'

getin=: "."0 readin

part1=: (*&:#. -.)@(-:@# < +/)  NB. (epsilon =: -. gamma)

assert 198 = part1 inx=. getin 'inputs/day-03-example.txt'

assert 2595824 = part1 in=. getin 'inputs/day-03.txt'

NB. Filter rows in y with 'u' common elements in column x
NB. y = input matrix
NB. x = target column for 'u'
NB. u = comparison operator (< , > , >: , <: , =)
filtrows=: 1 : '[ #~ {"1~ = -:@#@[ u +/@:({"1~)'

NB. Reduce using verb 'u/\.' on a boxed list y
foldr=: 1 : '[: <@(u&>)/\. ,&boxxopen'

NB. Recursively filter rows using 'u' common elements from each column
rating=: 1 : '[: >@(] #~ 1: = #&>) (] (u filtrows)~ foldr~ ;/@i.@-@{:@$)'

part2=: */@:#.@(> rating ,: <: rating)

assert 230 = part2 inx=. getin 'inputs/day-03-example.txt'

assert 2135254 = part2 in=. getin 'inputs/day-03.txt'

rating=: 1 : 0
ix=. {.@I.@(-. @ (-: 1&|.)"1 @ |:) NB. index of first column where elements differ
cm=. { +/ u~ # - +/ 	     NB. common elements 'u' in x = column of y = data
fr=. ix (] #~ cm = {"1) ]  NB. filter all rows with 'cm' common elements in column (ix y)
fr`]@.(1 = #@])^:_ y	     NB. iterate until one row remains
)

part2=: [: */ [: #. > rating , <: rating

assert 230 = part2 inx=. getin 'inputs/day-03-example.txt'

assert 2135254 = part2 in=. getin 'inputs/day-03.txt'
