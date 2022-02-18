load <'utils.ijs'  NB. readin
getin=: ;: readin
dirxns=: ('forward'; 'up'; 'down') E./"0 1 {."1
disp=: [: ({. ,. [: -/|.@}.) (".@>@{:"1@]) *"1 dirxns
part1=: 3 : '+/ h * +/ v [ v=. {:"1 d [ h=. {."1 d [ d=. disp y'
part2=: 3 : '+/ h * +/ h * +/\ v [ v=. {:"1 d [ h=. {."1 d [ d=. disp y'
