#!/bin/bash
cat $3/$1/$2/nmap-ports.txt  | grep -P "\b(https?|ssl)\b" | tail -n +2 | cut -d '/' -f1 | tee $3/$1/$2/http_https_ssl.txt
