#!/bin/bash
echo "\n\n\n pwd"
pwd
echo "\n\n\n ls"
ls 
echo "\n\n\n ls /app/app/"
ls /app/app/
echo "\n\n\n pip freeze"
pip freeze
echo "\n\n\n runserver"

python /app/app/api.py