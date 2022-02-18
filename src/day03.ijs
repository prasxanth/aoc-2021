load <'utils.ijs'  NB. readin
getin=: "."0 readin
part1=: (*&:#. -.)@(-:@# < +/)  NB. (epsilon =: -. gamma)
filtrows=: 1 : '[ #~ {"1~ = -:@#@[ u +/@:({"1~)'
foldr=: 1 : '[: u&.>/\. ,&boxxopen'
rating=: 1 : '[: >@(] #~ 1: = #&>) (] (u filtrows)~ foldr~ ;/@i.@-@{:@$)'
part2=: */@:#.@(> rating ,: <: rating)

rating=: 1 : 0
ix=. {.@I.@(-. @ (-: 1&|.)"1 @ |:) NB. index of first column where elements differ
cm=. { +/ u~ # - +/ 	     NB. common elements 'u' in x = column of y = data
fr=. ix (] #~ cm = {"1) ]  NB. filter all rows with 'cm' common elements in column (ix y)
fr`]@.(1 = #@])^:_ y	     NB. iterate until one row remains
)
part2=: [: */ [: #. > rating , <: rating
