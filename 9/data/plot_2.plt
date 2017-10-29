file = "data_2.dat"
set term latex
set output "graph_2-0.tex"
set xlabel '\popi{\phi}{\dg}'
set ylabel '\popi{U}{V}'
A=4
C=-40
f(x) = A*(cos(B*((x+C)*pi/180)))**2+D
fit f(x) file u 1:2:(1) i 0 via C,A
plot [0:90] [:6] file u 1:2:(1) i 0 w yerrorbars t 'namerané hodnoty' ,f(x) t '$f(x)=1.90\pm0.24\mathrm{cos}^2\(x-\(33.01\pm6.27\)\)$'
show output

reset

set output "graph_2-1.tex"
A=4
C=-40
set xlabel '\popi{\phi}{\dg}'
set ylabel '\popi{U}{V}'
f(x) = A*(cos(B*((x+C)*pi/180)))**2+D
fit f(x) file u 1:2:(1) i 1 via C,A
plot [0:90] [:6] file u 1:2:(1) i 1 w yerrorbars t 'namerané hodnoty',f(x) t '$f(x)=1.38\pm0.32\mathrm{cos}^2\(x-\(24.21\pm27.87\)\)$'
show output

reset
set output "graph_2-2.tex"
A=4
C=-40
set xlabel '\popi{\phi}{\dg}'
set ylabel '\popi{U}{V}'
f(x) = A*(cos(B*((x+C)*pi/180)))**2+D
fit f(x) file u 1:2:(1) i 2 via C,A
plot [0:90] [:6] file u 1:2:(1) i 2 w yerrorbars t 'namerané hodnoty' ,f(x) t '$f(x)=2.22\pm0.22\mathrm{cos}^2\(x-\(45.97\pm8.53\)\)$'
show output

reset
set output "graph_2-3.tex"
A=4
C=-45
set xlabel '\popi{\phi}{\dg}'
set ylabel '\popi{U}{V}'
f(x) = A*(cos(B*((x+C)*pi/180)))**2+D
fit f(x) file u 1:2:(1) i 3 via C,A
plot [0:90] [:6] file u 1:2:(1) i 3 w yerrorbars t 'namerané hodnoty' ,f(x) t '$f(x)=2.32\pm0.53\mathrm{cos}^2\(x-\(30.18\pm17.04\)\)$'
show output

