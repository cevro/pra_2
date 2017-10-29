file = "data_2-1.dat"
set term latex
set output "graph_3.tex"
set xlabel '\popi{\lambda}{nm}'
set ylabel '\popi{\alpha}{\dg}'
A=4

f(x) = 1.7*A/x**2
fit f(x) file u 2:3:4 i 0 via A
plot  file u 2:4:4 i 0 w yerrorbars t 'namerané hodnoty' ,f(x) t '$f(x)=1.7\cdot\(5.64\pm1.10\)\cdot10^{-12}\lambda^{-2}$'
show output

