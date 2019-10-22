import os

file = open('/var/log/gunicorn/migrations.log', 'a')
file.write('[python]: migrations complete!' + '\n')
file.close()

