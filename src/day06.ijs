load <'utils.ijs'  NB. readin
getin=: [: , ". readin
stoctrix=: (1 0) ,~ (0 0 0 0 0 0 1 0) ,. (e.@i. 8)
mp=: +/ . *
mpow=: 4 : 'mp/ mp~^:(I.|.#:y) x'
nfish=: [: +/ stoctrix&mpow@] mp ([: <:@#/.~ (i.9) , [)
part1=: nfish&80
part2=: nfish&256
