# Investigation Questions Part 1

- *What does `SCCTolerance` control?*
    
    `SCCTolerance` controls the amount of tolerance between the charges used to build the Hamiltonian and the charges obtained after the diagonalisation of the Hamilton to establish convergence. This self-consistently convergence on happens after numerous iterations of solving the system.

- *What does `MaxSCCIterations` do?*

    The default maximal number of scc-iterations is 100. However, this can be changed by setting it in the `MaxSCCIterations` option. 

- *What does the `Driver` block do when it is not empty?*

    The `Driver` block is for allowing changes to the geometry of the atoms in the molecule during the calculations. 

- *How do MPI processes and OMP threads interact, and what combination is fastest on this hardware?*

    MPI accepts the task such as the matrix and places it on the CPU's memory. If the matrices are too large they are slip across the CPU's and then need to communicate to each other. It is better to assign 1 task per CPU to try prevent additional communication.

    The OMP threads handles the mathematics of the matrices. One might as well use all the threads available on the cpu.

- *What does the `Parallel` block in `dftb_in.hsd` allow you to configure?*

    The `Parallel` block allows you to configure the MPI parallelization which determines how DFTB+ makes use of the parallel computing resources. This can speed up calculations.

---

# Investigation Questions Part 2

- *What does the `KPointsAndWeights` block control, and why does using more k-points give a better result but take longer?*



- *Look at your atomic charges plot - why are the oxygen atoms always negative and the hydrogen atoms always positive? What does this tell you about how water molecules share electrons?*

    The water molecules don't share the electrons equally. This causes the molecules to have more negative sides and more positive sides, thus helping molecules to attract each other.

- *What is the band gap of your water system? How can you read it from either the DOS plot or the band structure plot?*



- *What does the `WriteBandOut` option in the `Analysis` block do, and what file does it produce?*



- *Look at your energy components plot - the H0 energy is large and negative, but the SCC and Repulsive terms partially cancel it. What does each of these three terms physically represent?*


