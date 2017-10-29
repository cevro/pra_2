set term latex

set output "graph_0.tex"

file = "data_0.dat"

set ylabel '\popi{I}{A}'
set xlabel '\popi{U}{V}'
set key bottom

plot file u 1:2 t 'Namerané hodnoty'

show output
