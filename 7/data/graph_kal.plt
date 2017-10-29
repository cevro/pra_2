set term latex

set output "graph_kal.tex"
set ylabel '\popi{E\prime}{keV}'
set xlabel '\popi{E\_t}{keV}'
set key left top

f(x) = A*x+B

fit f(x) "kal.dat" u 1:3 via A,B

plot "kal.dat" u 1:3:2:4 i 0 w xyerrorbars t 'kalibračné hodnoty \ce{^{137}Cs}',"" u 1:3:2:4 i 1 w xyerrorbars t 'kalibračné hodnoty \ce{^{60}Co}' ,"" u 1:3:2:4 i 2 w xyerrorbars t 'kalibračné hodnoty \ce{^{133}Ba}'  , f(x) t 'kalibračná krivka'

show output

#A               = 0.173597         +/- 0.003889     (2.241%)
#B               = 1.94053          +/- 3.109        (160.2%)



