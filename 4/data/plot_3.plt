reset
n=20 #number of intervals
max=10.0 #max value
min=1.0 #min value
width=(max-min)/n #interval width
#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0
set term latex #output terminal and file
set output "graph_3.tex"
set xrange [min:max]
set yrange [0:]

#to put an empty boundary around the
#data inside an autoscaled graph.
set offset graph 0.05,0.05,0.05,0.0
set xtics min,(max-min)/5,max
set boxwidth width*0.9
set style fill solid 0.5 #fillstyle
set tics out nomirror
set xlabel '\popi{Q/e}{-}'
set ylabel '\popi{multiplicity}{-}'
#count and plot
plot "data_2.dat" u (hist($1,width)):(1.0) smooth freq w boxes notitle
show output
