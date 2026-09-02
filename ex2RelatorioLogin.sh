#!/bin/bash

#Accepted password/Accepted publickey mostra login com sucesso
grep -E "Accepted (password|publickey)" /var/log/auth.log | \ #ativa regex para filtrar as linhas com strings "Accepted password" ou "Accepted publickey"
  awk '{print $1, $2, $3, "-> User:", $9}' #mostra data, hora, host e usuário que logou com sucesso