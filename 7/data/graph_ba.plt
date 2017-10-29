set term latex 
set output "graph_ba.tex"
file = "< paste Ba.dat poz.dat"
t = 10*60.0
set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E^\prime}{keV}'
set logscale y 


f(x) = A1*exp(-(((x-B1)**2)/(2*C1**2)))
B1 = 80
A1 = 2
C1=3
fit [60:100] f(x) file u 1:(($2-$4)/t) via A1,B1,C1

g(x) = A2*exp(-(((x-B2)**2)/(2*C2**2)))
B2 = 55
A2 = 1
fit [50:60] g(x) file u 1:((($2-$4)/t)-f($1)) via A2,B2,C2

h(x) = A3*exp(-(((x-B3)**2)/(2*C3**2)))
B3 = 35
A3 = 1
fit [30:40] h(x) file u 1:((($2-$4)/t) -f($1)-g($1)) via A3,B3,C3

l(x) = f(x)+g(x)+h(x)

plot [24:150] [0.001:100] file u 1:(($2-$4)/t) t 'Namerané hodnoty pre \ce{^{133}Ba}' , f(x) t '$f_1\(x\)$' , g(x) t '$f_2\(x\)$'  , h(x) t '$f_3\(x\)$'  #, l(x) t '$f_1\(x\)+f_2\(x\)+f_3\(x\)$'

show output
reset


#A1              = 36.3             +/- 0.6853       (1.888%)
#B1              = 64.3931          +/- 0.1677       (0.2605%)
#C1              = 5.06184          +/- 0.176        (3.477%)

#f_1\(x\)= \(36.30\pm0.69\)*\mathrm{exp}\(-\frac{x-\(64.40\pm0.17\)}{2\(5.06\pm0.17\)^2}\)

#A2              = 13.9401          +/- 0.7434       (5.333%)
#B2              = 53.5003          +/- 0.2195       (0.4103%)
#C2              = 2.99485          +/- 0.2553       (8.526%)

#f_2\(x\)= \(13.94\pm0.74\)*\mathrm{exp}\(-\frac{x-\(53.50\pm0.22\)}{2\(2.99\pm0.25\)^2}\)

#A3              = 13.0037          +/- 0.3691       (2.839%)
#B3              = 33.9371          +/- 0.393        (1.158%)
#C3              = 6.3145           +/- 0.7744       (12.26%)
#f_3\(x\)= \(13.00\pm0.37\)*\mathrm{exp}\(-\frac{x-\(33.93\pm0.40\)}{2\(6.31\pm0.77\)^2}\)
