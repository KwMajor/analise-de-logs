#!/bin/bash

grep "Failed password\|authentication failure" /var/log/auth.log | \ #filtra linhas com failed password ou authentication failure
  grep -oP 'pam_unix\(\K[^:)]+|for (invalid user )?\K\S+' #extrai o nome do user, seja ele válido ou inválido, usando regex com lookbehind

