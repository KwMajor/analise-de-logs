#!/bin/bash

SERVICO="sshd" #define o nome do serviço filtrado
grep "$SERVICO" /var/log/auth.log | grep -Ei "error|warning" #filtra as linhas relacionadas ao serviço e aplica o segundo filtro somente nas linhas filtradas e mantem as com erro ou wirning.
