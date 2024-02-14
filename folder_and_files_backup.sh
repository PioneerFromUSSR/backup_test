#!/bin/bash
USERNAME="kos"

for IP in `cat /home/list_of_servers`; do 
    ssh $USERNAME@$IP 
    rsync -ru $USERNAME@$IP:/var/example/* ./$IP/example_backups/
done