#!/bin/bash

curl $(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mynginx) | grep "You guys are amazing for learning containers and OpenShift with DO180. Adios. "

if [ $? eq 0 ]; then
	echo "Congratulations. You have passed the text. :)"
fi

