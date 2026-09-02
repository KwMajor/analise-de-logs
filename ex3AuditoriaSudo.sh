#!/bin/bash

grep "sudo:.*COMMAND" /var/log/auth.log | \ #filtra linha que tem sudo e command
  awk '{print $1, $2, $3, "- Usuário:", $6}' | sed 's/://' #imprime data, hora e user, e remove os ":"