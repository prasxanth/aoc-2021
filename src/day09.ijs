load <'utils.ijs'  NB. readin
getin=: "."0 readin
lowpoints=: ] < [: <./ (_1&* , ])@=@i.@2: (|.!.9) ]
part1=: [: +/ [: , >:@] * lowpoints
findadj=: (|."1@|:@:>. * * 1&(|.!.0))^:4^:_ @ (*>:@i.@$)
bsizes=: (\:~)@(#/.~)@(] #~ 0 ~: ]) ,@findadj@(9&~:)
part2=: */ 3&{. bsizes
