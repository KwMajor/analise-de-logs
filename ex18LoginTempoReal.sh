#!/bin/bash

tail -f /var/log/auth.log | grep --line-buffered -Ei "Failed password|authentication failure" #mantem o arquivo aberto e mostra cada linha nova que é escrita, filtra em tempo real e força o grep a liberar cada linha instantaneamente.

