#!/bin/bash

grep -E "^(Start-Date|Commandline)" /var/log/apt/history.log #filtra os logs de histórico do apt, que contém a string "Start-Date" e "Commandline"