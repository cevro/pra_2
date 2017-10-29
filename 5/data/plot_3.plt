
file = "data_3.dat"
set term latex


h=1.05*10**(-34)
k=1.38*10**-(23)
c=300000000
t=1502.499206


set format x '$%.1t\cdot10^{%S}$'
set format y '$%.1t\cdot 10^{%S}$'
set xtics 10**(-7)

set ylabel '\popi{I\(\lambda\)}{W/m^2}'
set xlabel '\popi{\lambda}{m}'

set output "graph_3_0.tex"

f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 0 u 1:2 via t
plot file i 0 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1040.59\pm20.91\)}\)-1\)}$'
show output 


set output "graph_3_1.tex"
f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 1 u 1:2 via t
plot file i 1 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1177.62\pm19.92\)}\)-1\)}$'
show output 




set output "graph_3_2.tex"
f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 2 u 1:2 via t
plot file i 2 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1493.54\pm15.63\)}\)-1\)}$'
show output 



set output "graph_3_3.tex"
f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 3 u 1:2 via t
plot file i 3 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1253.00\pm18.90\)}\)-1\)}$'
show output 



set output "graph_3_4.tex"
f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 4 u 1:2 via t
plot file i 4 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1129.08\pm32.93\)}\)-1\)}$'
show output 



set output "graph_3_5.tex"
f(x)= (2*h*c*c)/(x**5*(exp((h*c)/(x*k*t))-1))
fit f(x) file i 5 u 1:2 via t
plot file i 5 u 1:2:($1*0.05):($2*0.05) w xyerrorbars t 'namerané hodnoty', f(x) t '$I(\lambda)= \frac{2hc^2}{\lambda^5\(exp\(\frac{hc}{\lambda k \(1357.27\pm28.47\)}\)-1\)}$'

show output 

reset



