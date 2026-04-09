from qiskit import *
from qiskit.circuit.library import *
from qiskit_aer import *
import time
import numpy as np

def quant_vol(qubits=15, depth=10, shots=1):
   sim = AerSimulator(method='statevector', device='CPU')
   circuit = QuantumVolume(qubits, depth, seed=0)
   circuit.measure_all()
   circuit = transpile(circuit, sim)

   start = time.time()
   result = sim.run(circuit, shots=shots, seed_simulator=12345).result()
   time_val = time.time() - start
   return time_val


num_qubits = np.arange(2, 10)
qv_depth = 5
num_shots = 10

# Array for storing the output results
results_array = []

# iterate over qv depth and number of qubits
for i in num_qubits:
   results_array.append(quant_vol(qubits=i, shots=num_shots, depth=qv_depth))
   # for debugging purposes you can print out the results

print(results_array)

import matplotlib.pyplot as plt

x = list(range(1, len(results_array) + 1))

plt.plot(x, results_array, marker='o')
plt.xlabel("Number of Qubits")
plt.ylabel("Quantum Volume Result")
plt.title("Quantum Volume vs Qubits")
plt.grid()

plt.savefig("qv_plot.png")
plt.show()
