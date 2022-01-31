#+TITLE:     Advent of Code: 2021
#+AUTHOR:    Prashanth Kumar
#+DATE:      2021-12-01
#+EMAIL:     prasxanth.kumar@gmail.com
#+LANGUAGE:  en

#+INFOJS_OPT: view:info toc:t tdepth:2 sdepth:1 ltoc:nil mouse:underline path:org-info.js buttons:t

#+PROPERTY: header-args:J  :session *aoc2021* :eval never-export

#+HTML_HEAD: <link rel="stylesheet" type="text/css" href="org.css"/>
#+EXPORT_FILE_NAME: docs/index.html
#+EXPORT_EXCLUDE_TAGS: noexport

#+OPTIONS: ':t *:t -:t ::t <:t H:4 \n:nil ^:t arch:headline author:t c:nil
#+OPTIONS: creator:comment d:(not LOGBOOK) date:t e:t email:nil f:t inline:t
#+OPTIONS: num:nil p:nil pri:nil stat:t tags:t tasks:t tex:t timestamp:t toc:t

** Initializations                                                 :noexport:

*** Set working directory path

#+NAME: setwd
#+BEGIN_SRC j :results output
  (1!:44) (jpath '~/Documents/advent-of-code-2021/')
  load <'utils.ijs'
  getcwd ''
#+END_SRC

#+RESULTS: setwd
: /mnt/c/Users/pkumar162722/OneDrive - Applied Materials/Scratch/Analytics Exercises/Scripts/advent-of-code-2021

** About
Solutions to [[https://adventofcode.com/2021][Advent of Code: 2021]] in the array programming language [[https://www.jsoftware.com/#/][J]]. 

Language and IDE details,

| Engine    | *j901/j64/linux*                 |
| Release-c | *commercial/2020-01-11T10:39:00* |
| Library   | *9.01.24*                        |
| Qt IDE    | *1.8.7/5.7.1(5.9.5)*             |
| Platform  | *Linux 64*                       |

*** Conventions

**** General

#+begin_note
Before we start, I should point out a convention of J: if a dyadic verb is asymmetric, 
for mnemonic purposes you should think of x as operating on y.  One way to express this is to say that x is control 
information and y is data.  Another way is to say that if you were applying the verb many times, you would expect to 
apply the same x to different ys rather than the other way around.

-- https://www.jsoftware.com/help/jforc/more_verbs.htm
#+end_note

**** Naming
  + All variable and function names are lower case and do /not/ include any underscores
  + All variable and function names, in tacit and explicit definitions, are at least two characters long to avoid confusion with 
    built-in single character J verbs. Exceptions to this are for variables defined in,
    - Single line quoted expressions
    - Anonymous verbs

**** AOC specific

| Convention                   | Type              | Description                                               | Example                                   |
|------------------------------+-------------------+-----------------------------------------------------------+-------------------------------------------|
| =getin=                      | Monadic function  | Read and process data from input file                     | =getin =: ;: readin=                      |
| =in=                         | Variable          | Input data for problem                                    | =in =: getin 'inputs/day-01.txt'=         |
| =inx=; =inx1=; =inx2=; =...= | Variable(s)       | Example input data for problem                            | =inx =: getin 'inpus/day-01-example.txt'= |
| =part1=; =part2=            | Monadic functions | Solutions to respective parts of problems with =y = data= | =part1 in=                                |

#+begin_attention
General functions that would be useful beyond the scope of the solution are indicated with the ❖ symbol.
#+end_attention

*** Site

This site was generated using *Emacs 26.3* with *Org mode 9.1.9*. A custom CSS and [[https://orgmode.org/worg/code/org-info-js/][Org-Info.JS]] were used to style the exported HTML.

This site is best viewed with [[https://fonts.google.com/specimen/Fira+Sans][Fira Sans]] and [[https://fonts.google.com/specimen/Fira+Code][Fira Code]] fonts.
