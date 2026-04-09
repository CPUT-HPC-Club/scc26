# Investigation questions 1

1. What does SCCTolerance control?
This acts as the precise threshold for ou calculations. It It determines how stable the electronic charges must be before the software considers the cycle converged.
2. What does MaxSCCIterations do?
This is a limit on the number of attempts the software makes to reach convergence. It prevents the job from running indefinitely if a solution cannot be found.
3. What does the Driver block do when it is not empty?
When configured, this block instructs DFTB+ to perform dynamic tasks like geometry optimization or molecular dynamics rather than just a static energy calculation.
4. How do MPI processes and OMP threads interact, and what combination is fastest on this hardware?
MPI handles communication between different CPU nodes, while OpenMP manages threading within a single node. The fastest combination usually involves increasing the available physical cores without over-using them.
5.What does the Parallel block in dftbin.hsd allow you to configure?
This section allows for the configuration of how linear algebra tasks, such as matrix diagonalization via ScaLAPACK.


#Investigation questions 2

1. What does the KPointsAndWeights block control, and why does using more k-points give a better result but take longer?
This controls the density of the grid used to sample the Brillouin zone. More k-points provide higher accuracy for periodic systems but increase the computational load linearly.
2. Look at your atomic charges plot - why are the oxygen atoms always negative and the hydrogen atoms always positive? What does this tell you about how water molecules share electrons?
Oxygen is more electronegative than hydrogen, meaning it attracts the shared electron density more strongly. This results in oxygen carrying a partial negative charge and hydrogen carrying a partial positive charge.
3. What is the band gap of your water system? How can you read it from either the DOS plot or the band structure plot?
It can be identified as the zero-density region between peaks on a DOS plot or the vertical gap in a band structure plot.
4. What does the WriteBandOut option in the Analysis block do, and what file does it produce?
This setting tells the program to export the specific energy levels calculated at each k-point into a file named `band.out`, which is required for plotting.
5.Look at your energy components plot - the H0 energy is large and negative, but the SCC and Repulsive terms partially cancel it. What does each of these three terms physically represent?
The **H0 energy** represents the baseline electronic energy; the **SCC energy** accounts for the electrostatic interactions from charge redistribution; and the **Repulsive energy** models the short-range nuclear repulsion and Pauli exclusion forces.


For this task, I built DFTB+ using the GCC 15.2.0 and OpenMPI 5.0.10 environment. I optimized the Slurm submission script to balance parallel efficiency. I also modified the input files to generate high-quality band structure and density of states data.

 
