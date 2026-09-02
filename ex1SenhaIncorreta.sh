#!/bin/bash

# Log apropriado: /var/log/auth.log
grep "Failed password" /var/log/auth.log | \ #filtra só linhas com a  string "Failed password"
  grep -oP 'for (invalid user )?\K\S+' | \ #retorna somente o trecho padrão
  sort | uniq -c | sort -rn #ordena nomes, agrupa os repetidos e ordena em ordem decrescente