se term x11

file = "data_vakum_1-1_post.dat"
f(x) = A*x+B
B = 0
fit f(x) file u 7:1 via A
set key left
set ylabel '\popi{U}{V}'
set xlabel '\popi{I}{A}'
plot f(x) t 'fit $U=\(14.308\pm0.015\)10^{-3}I$',file u 7:1 with dots t 'data'

set output "graph_vakum_1-1_R_kal.tex"
set term latex
replot
show output


