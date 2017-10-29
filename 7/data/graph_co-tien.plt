set term latex
set output "graph_co-tien_1.tex"
file = "< paste Co.dat Co-tien.dat poz.dat"
t = 10*60.0

set ylabel '\popi{I_0/I}{-}'
set xlabel '\popi{E}{keV}'
set key top left

kal(x)= ((x-1.94053)/0.173597 )
f(x) = A
fit [200:700] f(x)  file u (kal($1)):(($2)/($4)) via A
plot [150:2000]  file u (kal($1)):(($2)/($4)) t '$I\(E\)$', f(x) t '$I = "\(0.91\pm0.05\)I_0"$'

show output
reset

set term latex
set output "graph_co-tien_2.tex"
file = "< paste Co.dat Co-tien.dat poz.dat"
t = 10*60.0

set logscale y

set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E}{keV}'
set key bottom left

kal(x)= ((x-1.94053)/0.173597 )

plot [150:2000] file u (kal($1)):(($2)/t) t 'Netienené spektrum (bez odčítaného pozadia)' w lines, file u (kal($1)):(($4)/t) t 'Tienené spektrum (bez odčítaného pozadia)' w lines,

show output
reset
