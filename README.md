# P8_CORDIC_CoProcessor
 
This repository is a part of a 8th semester project at Aalborg University in the masters programme of Signal Processing and Acoustics.

The repository contains a folder for Matlab code and a folder for VHDL code.
The Matlab code is used for fixed points simulations of the CORDIC algorithm, as well as generating plots for various purposes throughout the report. Whenever a script is used for generating a figure in the report, the number of the figure is part of the title of the Matlab file.

The VHDL part of the project consists of two implementations of the CORDIC algorithm. One implementation aiming to optimise the algorithm with regards to execution time, and another implementation aiming to reduce the hardware usage of the  co-processor.
The VHDL projects can be opened by opening the "CORDIC.qpf" project files. The implementations has been tested using Intel Quartus Prime 17.1 using a standard license.
