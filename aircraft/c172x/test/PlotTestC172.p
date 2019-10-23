# Gnuplot script file for plotting data in file "test3.crt"

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
 
# --------------- TERMINAL 1 ---------------
set terminal window 1
set multiplot title "Angles"
set size 1,0.33

set origin 0.0,0.6
set xlabel ""
set ylabel "Phi, DEG"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:104 title 'Roll' with lines

set origin 0.0,0.3
set xlabel ""
set ylabel "Theta, DEG"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:105 title 'Pitch' with lines

#set origin 0.0,0.03
set origin 0.0,0.0
set xlabel "Time, sec"
set ylabel "Altitude, FT"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:103 title 'AGL' with lines
   
unset multiplot                         # exit multiplot mode

# --------------- TERMINAL 2 ---------------
set terminal window 2
set multiplot title "Other info"
set size 1,0.33

set origin 0.0,0.6
set xlabel ""
set ylabel "Distance WP, FT"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:126 title 'Distance' with lines

set origin 0.0,0.3
set xlabel ""
set ylabel "Heading, DEG"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:129 title 'Heading' with lines

#set origin 0.0,0.03
set origin 0.0,0.0
set xlabel "Time, sec"
set ylabel "Waypoints"
plot  \
   "aircraft/c172x/test/TestC172Orbit_Out.csv" using 1:172 title 'WP' with lines
   
unset multiplot                         # exit multiplot mode

# --------------- TERMINAL 3 ---------------
set terminal window 3
set size 1,1
set ylabel "Lat, DEG"
set xlabel "Long, DEG"
set zlabel "Alt, FT"
set ticslevel 0
splot "aircraft/c172x/test/TestC172_Out.csv" using 110:252:103 title 'Trajectory 1' with lines 

# --------------- TERMINAL 4 ---------------
set terminal window 3
set size 1,1
set ylabel "Lat, DEG"
set xlabel "Long, DEG"
set zlabel "Alt, FT"
set ticslevel 0
splot "aircraft/c172x/test/TestC172Orbit_Out.csv" using 110:255:103 title 'Trajectory 2' with lines 

# --------------- TERMINAL 5 ---------------
set terminal window 5
set size 1,1
set ylabel "Lat, DEG"
set xlabel "Long, DEG"
set zlabel "Alt, FT"
set ticslevel 0
splot "aircraft/c172x/test/TestC172_Out.csv" using 110:252:103 title 'Trajectory 1' with lines , \
	  "aircraft/c172x/test/TestC172Orbit_Out.csv" using 110:255:103 title 'Trajectory 2' with lines


pause -1 "Press ENTER to continue"