## 2. Running services

Command used:
systemctl list-units --type=service --state=running

Result:
List of running services was displayed.

## 3. SSH logs

Command used:
journalctl -u sshd --since "1 hour ago"

Result:
Recent SSH logs were displayed.

## 4. CPU information

Command used:
lscpu | grep -Ei 'Architecture|Core|Flags'

Result:
Displayed CPU architecture, cores, and flags.

## 5. Compute node allocation

Commands used:
salloc -N 1 -t 30:0
srun --pty bash
hostname

Result:
Successfully allocated a compute node (com1) and accessed it.
