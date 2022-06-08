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

export FLASK_APP=/app/app/api.py
export FLASK_ENV=development
export FLASK_DEBUG=0

python -m flask run

# python /app/app/api.py