#!/bin/bash

last -x | grep -E "shutdown|reboot" # last -x inclui eventos de sistema como runlevel, shutdown, reboot