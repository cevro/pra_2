
set term latex
set output "graph_am.tex"
file = "< paste Am.dat poz.dat"
t = 10*60.0

set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E}{keV}'


plot [0:150] file  u 1:(($4)/t) t 'pozadie' w lines , "" u 1:(($2)/t) t 'žiarič + pozadie' w lines
show output 
