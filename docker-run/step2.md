This is the second step

In this step, you would download and run the containers after downloading the image.

_Containers are just processes on the host, and a process requires a binary or a command. In docker, the image is needed to create a container._  

## Task: Downloading the image


`docker pull docker.io/nginx`{{execute}}


Now the image will be pulled on your node which can be seen by looking at the images downloaded locally on your node.

`docker images`{{execute}} 

_Do not worry about the images which are already there._

## Task: Run the container

To run the container in the background so your terminal is not frozen by the process, run the following.

`docker run -d --name mynginx docker.io/nginx:latest`{{execute}}

## Verify the work:

Once the container is running, make sure you are able to connect and see the right content to it. 

_To see the IP of the container_, execute the following,

`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mynginx'{{execute}}

Once the IP is availble, use the curl command to connect to it. 

`curl $(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mynginx)'{{execute}}

If you see The content saying:

_You guys are amazing for learning containers and OpenShift with DO180. Adios_

You are done with the exercise.
