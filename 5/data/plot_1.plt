
set term latex

set output "graph_1.tex"

file = "data_1.dat"
f(x) = A*x
set ylabel '\popi{P}{W}'
set xlabel '\popi{T^4}{k^4}'

fit f(x) file u ($2**4):1 via A
plot file u ($2**4):1 t 'vypočítané hodnoty', f(x) t 'fit $P(T^4) = "\(1.62\pm0.10\)10^12 T^4"$'

show output
