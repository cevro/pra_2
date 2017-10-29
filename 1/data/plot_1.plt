set term latex
set output 'graph_0.tex'

file = "data_0.dat"
set xlabel '\popi{n}{-}'
set ylabel '\popi{f}{Hz}'
f(x) = A*x
fit f(x) file u 1:2 via A
plot [0:11] file u 1:2 t 'namerané dáta', f(x) t 'Preložená závislosť $C=\(23.38\pm0.03\)n$'

show output

reset 


set term latex
set output 'graph_1.tex'

file = "data_1.dat"
set xlabel '\popi{T}{s}'
set ylabel '\popi{\lambda\equiv 2\Delta d}{m}'
f(x) = A*x+B 
fit f(x) file u (1/$1):(2*$2):3 via A,B
plot file u (1/$1):(2*$2):3 w yerrorbars t 'namerané dáta', f(x) t 'Preložená závislosť $\(348.7\pm6.7\)T-0.001$'

show output
