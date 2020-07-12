This is the second step.

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
