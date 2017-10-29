

set term latex
set output file .'U_l.tex'
set ylabel '\popi{U_l}{V}'
set xlabel '\popi{t}{ms}'

set arrow from t_start,-10000 to t_start,10000 nohead
set arrow from t_end,-10000 to t_end,10000 nohead

plot file u ($5*10**3):1 w lines t 'Loop voltage $U_l$'
show output
reset

set output file.'B_t.tex'
set ylabel '\popi{B_t}{T}'
set xlabel '\popi{t}{ms}'
set key bottom


plot file u ($5*10**3):6 w lines t 'Toroidal mag. field $B_t$'
show output


set output file.'I_p.tex'
set ylabel '\popi{T_p}{A}'
set xlabel '\popi{t}{ms}'
set key left
set arrow from t_start,-10000 to t_start,10000 nohead
set arrow from t_end,-10000 to t_end,10000 nohead

plot file u ($5*10**3):8 w lines t 'Plasma current $I_p$'
show output


set output file.'H_a.tex'
set ylabel '\popi{U}{V}'
set xlabel '\popi{t}{ms}'

set arrow from t_start,-10000 to t_start,10000 nohead
set arrow from t_end,-10000 to t_end,10000 nohead

plot file u ($5*10**3):4 w lines t '$H_\alpha$ radiation'

show output


set output file.'-T.tex'
set ylabel '\popi{T}{eV}'
set xlabel '\popi{t}{ms}'
set key bottom

set arrow from t_start,-10000 to t_start,10000 nohead
set arrow from t_end,-10000 to t_end,10000 nohead

plot file u ($5*10**3):9 w lines t 'Electron temperature'

show output

##############################################
set term png
set key top
set output file .'U_l.png'
set ylabel '\popi{U_l}{V}'
set xlabel '\popi{t}{s}'


plot file u ($5*10**3):1 t 'Loop voltage'
show output
reset

set output file.'B_t.png'
set ylabel '\popi{B_t}{T}'
set xlabel '\popi{t}{m}'


plot file u ($5*10**3):6 t 'Toroidal mag. field'
show output
reset

set output file.'B_t-dt.png'
set ylabel '\popi{B_t}{T}'
set xlabel '\popi{t}{m}'


plot file u ($5*10**3):2 t 'Toroidal mag. field'
show output


set output file.'I_p.png'
set ylabel '\popi{I_p}{A}'
set xlabel '\popi{t}{ms}'

plot file u ($5*10**3):8 t 'Plasma current',"" u ($5*10**3):7 t 'total current'
show output


set output file.'H_a.png'
set ylabel '\popi{H_\alpha}{V}'
set xlabel '\popi{t}{ms}'

set arrow from t_start,-10000 to t_start,10000 nohead
set arrow from t_end,-10000 to t_end,10000 nohead

plot file u ($5*10**3):4 t '$H_\alpha$ radiation'
show output

set output file.'-T.png'
set ylabel '\popi{T}{aV}'
set xlabel '\popi{t}{ms}'

plot file u ($5*10**3):9 t 'Prikon'
show output

set output file.'-P_oh.png'
set ylabel '\popi{P_oh}{W}'
set xlabel '\popi{t}{ms}'

plot file u ($5*10**3):10 t 'Prikon'
show output