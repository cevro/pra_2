
file = "data_2.dat"
set term latex


sigma= 5.76*10**(-8) 

set format x '$%.1t\cdot10^{%S}$'
set format y '$%.1t\cdot 10^{%S}$'

set key bottom

set ylabel '\popi{I\(\lambda\)}{W/m^2}'
set xlabel '\popi{T^4}{K^4}'

set output "graph_2.tex"

f(x)= e*sigma*x
fit f(x) file u 2:($1**4) via e
plot file u 2:($1**4) t 'namerané hodnoty', f(x) t '$I(T^4)= "\(1.15\pm0.02\)\cdot 10^{8}\sigma T^4"$'
show output 

reset 
