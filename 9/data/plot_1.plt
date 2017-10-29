file = "data_1.dat"
set term latex
set output "graph_1.tex"
B=1
A=0.165
D=0;
C=0
f(x) = A*(cos(B*(x*pi/180)+C))+D
set ylabel '\popi{U}{V}'
set xlabel '\popi{\phi}{\dg}'
set key left bottom


fit f(x) file via D,A

plot [0:90] file u 1:2:(1):(0.01) w xyerrorbars t 'namerané hodnoty', f(x) t '$f\(\phi\)=\(0.14\pm0.07\)\mathrm{cos}^2\(\phi\)+\(0.034\pm0.005\)$' 

show output
