# Gnuplot script file for plotting data in file "EPPFPV_Out.csv"

set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

# If you have graphical capabilities, you can plot on your screen
# if none of the other terminals is specificed.

   # This is how to output the plot in PostScript format
   #set terminal postscript portrait enhanced color lw 1 "Helvetica" 14 size 8.5,11
   
   # This is how to output the plot in PNG format
   #set terminal png size 1280,960
   #set output "aircraft/Tutorial_1/results/trim-cruise.png"

   # This is how to output the plot in PDF format. (Not available on Mac)
   #set terminal pdfcairo color size 8.5,11
   #set output "aircraft/Tutorial_1/results/trim-cruise.pdf"

set multiplot title "States"
set size 1,0.33

set origin 0.0,0.6
set xlabel ""
set ylabel "FT/SEC"
plot  \
   "aircraft/EPPFPV/results/EPPFPV_ailerons10.csv" using 1:45 title 'Airspeed' with lines

set origin 0.0,0.3
set xlabel ""
set ylabel "FT"
plot  \
   "aircraft/EPPFPV/results/EPPFPV_ailerons10.csv" using 1:33 title 'Beta' with lines

#set origin 0.0,0.03
set origin 0.0,0.0
set xlabel "Time, sec"
set ylabel "DEG"
plot  \
   "aircraft/EPPFPV/results/EPPFPV_ailerons10.csv" using 1:29 title 'Roll' with lines
   
unset multiplot                         # exit multiplot mode

pause -1 "Press ENTER to continue"
