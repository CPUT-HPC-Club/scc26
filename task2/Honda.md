[honda@head task2]$ salloc: Job 204 has exceeded its time limit...# Task 2

## 1. SSH service status on head
![SSH Service Status](img/ssh1.jpeg)

## 2. Running services

Command used:
systemctl list-units --type=service --state=running

Result:
List of running services was displayed.
![Running Services](img/services2.jpeg)

## 3. SSH logs

Command used:
journalctl -u sshd --since "1 hour ago"

Result:
SSH logs show both failed and successful login attempts.

![SSH Logs](img/ssh-logs.jpeg)
## 4. CPU information

Command used:
lscpu | grep -Ei 'Architecture|Core|Flags'

Result:
Architecture: x86_64
Cores per socket: 8
Various CPU flags were displayed.

![CPU COM INFO](img/cpu-com.jpeg)


## 6. State Enabled Service
![Enabled Services](img/eService.jpeg)
