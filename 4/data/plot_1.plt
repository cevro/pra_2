reset 
set term latex
set output "graph_0.tex"
file = "data.dat"


set xlabel '\popi{\lambda}{nm}'
set ylabel '\popi{n}{-}'

set key top

f(x) = A + B/(C+x)


fit f(x) file u 2:1  via A,B,C

plot file u 2:1 t 'namerané hodnoty', f(x) t 'fit $1.620\pm0.001 + \frac{0.49\pm0.24}{\lambda-386.2\pm8.1}$ '

show output


