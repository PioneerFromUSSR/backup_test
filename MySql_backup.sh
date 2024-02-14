#!/bin/bash
USERNAME="kos"

for IP in `cat /home/list_of_servers`; do 
    ssh $USERNAME@$IP << HERE
mysqldump -u username -ppassword dbname > ~/${IP}.sql
HERE
    scp $USERNAME@$IP:${IP}.sql ./remote_mysql_backups/
done