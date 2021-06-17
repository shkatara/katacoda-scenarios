#!/bin/bash

curl $(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mynginx){{execute}}


