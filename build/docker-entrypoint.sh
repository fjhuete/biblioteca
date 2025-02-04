#!/bin/bash
while ! mysql -u ${USER} -p${PASS} -h ${HOST}  -e ";" ; do
	sleep 1
done	
mysql -u ${USER} -p${PASS} -h ${HOST} ${DB} < /opt/biblioteca.sql
apache2ctl -D FOREGROUND