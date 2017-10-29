reset 
set term latex
set output "graph_0.tex"
file = "data.dat"


set ylabel '\popi{U}{V}'
set xlabel '\popi{I^2}{A^2}'

set key bottom

f(x) = A*x+B


fit f(x) file u 4:1  via A,B

plot [:17] file u 4:1:(0.3*sqrt($4)):(20) w xyerrorbars t 'namerané dáta' , f(x) t 'fit $y(x)="\(17.7\pm8.0\)x+4.9\pm95.4"$' 

show output

