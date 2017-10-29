
set term latex
set output "graph_nez.tex"
file = "< paste nez.dat poz.dat"
t = 10*60.0

set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E}{keV}'
kal(x)= ((x-1.94053)/0.173597 )
set logscale y 

f(x) = A1*exp(-(((x-B1)**2)/(2*C1**2)))
B1 = 800
A1 = 4
C1=5
fit [700:900] f(x) file u (kal($1)):(($2-$4)/t) via A1,B1,C1

g(x) = A2*exp(-(((x-B2)**2)/(2*C2**2)))
B2 = 562.746 
A2 = 1.67235 
C2=69.7568    
fit [530:600] g(x) file u (kal($1)):((($2-$4)/t)-f($1)) via A2,B2,C2

h(x) = A3*exp(-(((x-B3)**2)/(2*C3**2)))
B3 = kal(30)
A3 = 0.5
C3 = 6.3145 
#fit [kal(25):kal(75)] h(x) file u (kal($1)):((($2-$4)/t) -f($1)-g($1)) via A3,B3,C3

l(x) = f(x)+g(x)+h(x)

plot [0:2000] [0.001:20] file u (kal($1)):(($2-$4)/t) t 'Namerané spektrum', f(x) t '$f_1\(x\)$' , g(x) t '$f_2\(x\)$'  #, h(x) t '$f_3\(x\)$'  

print B1,B2,B3
show output
#A1              = 3.81783          +/- 0.0879       (2.302%)
#B1              = 767.676          +/- 0.8962       (0.1167%)
#C1              = 33.7218          +/- 0.9356       (2.774%)

#f\(x\)= \(3.82\pm0.09\)*\mathrm{exp}\(-\frac{x-\(767.68\pm0.90\)}{2\(33.72\pm0.94\)^2}\)


#A2              = 1.67235          +/- 0.02847      (1.702%)
#B2              = 562.746          +/- 3.608        (0.6412%)
#C2              = 69.7568          +/- 3.054        (4.378%)



#A3              = 13.0037          +/- 0.3691       (2.839%)
#B3              = 328.469          +/- 9.254
#C3              = 6.3145           +/- 0.7744       (12.26%)



