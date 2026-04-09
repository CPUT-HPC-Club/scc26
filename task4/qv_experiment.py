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

# Print the results so we can see them
print("\n--- Quantum Volume Results ---")
for i, time_taken in enumerate(results_array):
    q_count = num_qubits[i]
    print(f"Qubits: {q_count} | Time: {time_taken:.4f} seconds")

# Fill in the missing package and library
import matplotlib.pyplot as plt

plt.xlabel('Number of qubits')
plt.ylabel('Time (sec)')
plt.plot(num_qubits, results_array)
plt.title('Quantum Volume Experiment with depth=' + str(qv_depth))
plt.savefig('qv_experiment.png')
