
set term latex
set output 'graph_gs.tex'

set ylabel '\popi{\text{brightness}}{1/2.55 \%}'
set xlabel '\popi{x}{px}'

plot [1:642] "data.pgm" u (642-$0):1 t 'spekturm'

show output 


