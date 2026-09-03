#!/bin/bash

DIA="Sep  1" #define o dia que você quer filtrar, no formato "Mês Dia"
awk -v dia="$DIA" '$0 ~ "^"dia && $3 >= "14:00:00" && $3 < "15:00:00"' /var/log/syslog #filtra o syslog para o dia e hora especificados, usando awk para comparar a data e hora