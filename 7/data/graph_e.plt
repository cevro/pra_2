set term latex
set output "graph_e.tex"
file = "data_e.dat"

set ylabel '\popi{\text{FWHM}}{KeV}'
set xlabel '\popi{E}{keV}'

kal(x)= ((x-1.94053)/0.173597 )
fwhm = 2*sqrt(2*log(2))

plot file u (kal($1)):(fwhm*$3):(kal($2)):(fwhm*$4) w xyerrorbars t 'namerané hodnoty'

show output


