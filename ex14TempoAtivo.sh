#!/bin/bash

BOOT=$(last reboot | head -1 | awk '{print $5, $6, $7, $8}') #lista eventos recentes de boot
DOWN=$(last shutdown | head -1 | awk '{print $5, $6, $7, $8}') #extrai campo de data e hora do último boot e do último shutdown
echo "Boot: $BOOT" #mostra os valores de boot e shutdown
echo "Shutdown: $DOWN" #mostra os valores de boot e shutdown
echo "Diferença (segundos): $(( $(date -d "$DOWN" +%s) - $(date -d "$BOOT" +%s) ))" #faz a diferença dos dois horarios e da o resultado em segundos