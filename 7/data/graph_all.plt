set term x11

kal(x)= ((x-1.94053)/0.173597 )
file = "< paste Cs.dat Cs-tien.dat poz.dat"
t = 10*60.0

set logscale y

set ylabel '\popi{A}{Bq}'
set xlabel '\popi{E}{keV}'

kal(x)= ((x-1.94053)/0.173597 )

plot [150:2000] file u (kal($1)):(($2-$6)/t) t 'Netienené spektrum (bez odčítaného pozadia)' w lines

show output
reset
