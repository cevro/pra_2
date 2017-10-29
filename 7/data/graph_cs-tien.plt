set term latex
set output "graph_cs-tien_1.tex"
file = "< paste Cs.dat Cs-tien.dat poz.dat"
t = 10*60.0

set ylabel '\popi{I_0/I}{-}'
set xlabel '\popi{E}{keV}'


kal(x)= ((x-1.94053)/0.173597 )
f(x) = A
fit [200:500] f(x)  file u (kal($1)):(($2)/($4)) via A
plot [150:2000]  file u (kal($1)):(($2)/($4)) t '$I\(E\)$', f(x) t '$I = "\(1.45\pm0.03\)I_0"$'

show output
reset

set term latex
set output "graph_cs-tien_2.tex"
file = "< paste Cs.dat Cs-tien.dat poz.dat"
t = 10*60.0

set logscale y

set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E}{keV}'

kal(x)= ((x-1.94053)/0.173597 )

plot [150:2000] file u (kal($1)):(($2)/t) t 'Netienené spektrum (bez odčítaného pozadia)' w lines, file u (kal($1)):(($4)/t) t 'Tienené spektrum (bez odčítaného pozadia)' w lines,

show output
reset
