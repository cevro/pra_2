set term latex
set output "graph_0.tex"
file = "data.dat"

A0=0.25
A1=0.015
A2=22
A3=0.00
#fit f(x) file u 1:(8.25-$2)  via A0,A2

set xzeroaxis
set yzeroaxis

set ylabel '\popi{B}{H}'
set xlabel '\popi{H}{A\cdot m^{-1}}'

set key bottom

B2=-22

g(x) = A0*erf(A1*(x+B2))+A3
f(x) = A0*erf(A1*(x+A2))+A3
fit g(x) file u 3:($4-0.25)  via A1,B2,A0
fit f(x) file u 1:(0.25-$2)  via A1,A2,A0
print A2
print B2
plot file u 1:(A0-$2) t 'namerané dáta' , "" u 3:($4-A0) t 'namerané dáta' ,f(x) t 'Aproximácia dát pomocou $erf(x)$', g(x) t 'Aproximácia dát pomocou $erf(x)$'

show output

