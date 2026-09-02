#!/bin/bash

grep -Ei "systemd\[1\]: (Starting|Started|Stopping|Stopped)" /var/log/syslog | \ #calcula data de 7 dias anteriores e guarda na variável de formato ano/mes/dia
  awk '{print $1, $2, $3, $5, $6, $7}' #passa variavel do shell pro awk e imprime data e status