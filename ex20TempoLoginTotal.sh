#!/bin/bash

last -F | grep -v "wtmp begins\|still logged in\|^$\|reboot" | \ #lista sessoes de login e logout 
  awk '{
    for (i=1; i<=NF; i++) {                           #percorre cada campo da linha
      if ($i ~ /^\([0-9:]+\)$/) {                     #testa se o campo é um tempo entre parênteses
        dur=$i; gsub(/[()]/,"",dur); split(dur,t,":") #copia o campo para dur, remove os parênteses e divide em horas e minutos
        tempo[$1] += t[1]*60 + t[2]                   #converte horas em minutos e acumula o tempo total por usuário
      }
    }
  } #
  END { for (u in tempo) printf "%s: %d minutos logado\n", u, tempo[u] }' #processa todas as linhas, percorre o array e mostra o total de minutos por user