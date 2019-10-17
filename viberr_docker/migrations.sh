#!/bin/bash

docker run --rm -ti \
	--volume /home/revolman/kubernetes/viberr:/srv/www/viberr \
	--volume /home/revolman/kubernetes/storage/static:/srv/www/viberr/static \
	--net viberr_net \
	python:3.7.3 \ 
	pip install mysqlclient && python /srv/www/viberr/manage.py makemigration && \
	python /srv/www/viberr/manage.py migrate
	
docker run --rm -ti --volume /home/revolman/kubernetes/viberr:/srv/www/viberr --volume /home/revolman/kubernetes/storage/static:/srv/www/viberr/static --net viberr_docker_viberr_net python:3.7.3 bash migrations.sh
