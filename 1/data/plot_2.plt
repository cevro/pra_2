set term latex
set output 'graph_2.tex'
set key right bottom

V = 1.03*10**3
PI=3.14
r=0.0187
l=0.07
vc= 314

f(x) = v*x/(2*PI)*((PI*r**2)*((l+1.4*r)))**(1/2.0)
file = "data_2.dat"
set xlabel '\popi{\frac{1}{\sqrt{V}}}{\sqrt{m^{-3}}}'
set ylabel '\popi{f}{Hz}'

fit f(x) file u 7:1 via v
plot file u 7:1 t 'namerané hodnoty', f(x) t 'preložená závylosť', file u 7:5 t 'vypočítané hodnoty'

show output
