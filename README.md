# P8_CORDIC_CoProcessor
 
This repository is a part of a 8th semester project at Aalborg University in the masters programme of Signal Processing and Acoustics.

The repository contains a folder for MATLAB code and a folder for VHDL code.
The MATLAB code is used for fixed points simulations of the CORDIC algorithm, as well as generating plots for various purposes throughout the report. Whenever a script is used for generating a figure in the report, the number of the figure is part of the title of the MATLAB file or folder.

The VHDL part of the project consists of two implementations of the CORDIC algorithm. One implementation aiming to optimise the algorithm with regards to execution time, and another implementation aiming to reduce the hardware usage of the  co-processor.
The VHDL projects can be opened by opening the "CORDIC.qpf" project files. The implementations have been tested using Intel Quartus Prime 17.1 on a standard license.
