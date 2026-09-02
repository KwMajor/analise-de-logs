#!/bin/bash

grep -Ei "Invalid user|authentication failure|permission denied|not in sudoers|user unknown" /var/log/auth.log | \ #estende o regex e ignora letras minusculas ou maiusculas, e filtra linhas com qualquer dos erros
  grep -v "Failed password" #inverte filtro, para remover linhas que tem "Failed password" e não contam como login rejeitado, já são tratadas no outro script