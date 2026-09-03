#!/bin/bash

awk '{print $5}' /var/log/syslog | sed 's/\[.*//' | sort | uniq -c | sort -rn | head -20 #extrai só o campo 5 de cada linha, remove o que estiver entre colchetes, ordena, agrupa e mostra os 20 mais frequentes