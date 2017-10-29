reset 
set term latex
set output "graph_1.tex"
file = "data_1.dat"

set ylabel '\popi{U}{V}'
set xlabel '\popi{I^2}{A^2}'
set key bottom
f(x) = A*x+B
fit f(x) file u 4:1  via A,B
plot file u 4:1:(.06*sqrt($4)):(20) w xyerrorbars t 'namerané dáta' , f(x) t 'fit $y(x)="\(94.0\pm3.2\)x+17.1\pm6.7"$' 

show output

