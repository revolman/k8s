#!/bin/bash

python manage.py makemigrations --no-input;
python manage.py migrate --no-input;

echo "[echo]: migrations complete" >> /var/log/gunicorn/migrations.log;
python ./log.py;

