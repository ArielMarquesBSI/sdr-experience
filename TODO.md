# TODO List #
  1. Update all .grcs. A lot of GNU Radio Blocks were updated and moved to another category, it causes a lot of problems in our .grcs;
  1. (DONE) Create a matlab script to simulate the algorithm and its use for sensing the FM spectrum. Generate a WFM signal;
  1. (DONE) Create a python script to simulate the algorithm and its use for sensing the FM spectrum. Generate a WFM signal;
  1. (DONE) Prepare MATLAB scripts for each one of the desired measures defined below.
  1. (DONE) Define measures to be performed with the algorithm/dongle in order to plot all the results needed:
    * Pfa vs dbW,
    * Pd vs SNR,
    * Desired Pfa vs Achieved Pfa,
    * Pfa vs Achieved Pd,
    * Function Profiling,
    * FFT Size vs SNR vs PD.
  1. (DONE) Define output values to be provided by the spectrum sensing block: Pfa and Pd;
  1. (DONE) What kind of metrics can we employ in our paper? The ones defined above.
  1. (DONE) Add segments to check for each of the other FFT sizes;
  1. Create a table with some Tcme values;
  1. (CANCELED) Add one more output to the spectrum sensing block which outputs SNR;
  1. Create a block which measures the SNR;
  1. Carry out simulations with VSG and USB dongle;
  1. Write a paper with findings/results;
  1. Re-check the GNU Radio simulation for FFT size 512 and 2048;
  1. Create GNU Radio simulations varying Pd.