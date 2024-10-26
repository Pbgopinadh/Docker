How to create a container. we create a container using an images and this images is created using the docker build command.

To this docker build command we have to provide a configuration file. by default docker searches for a file named Dockerfile for creating a image until unless explicitly mentioned.

docker build . (if the dockerfile is in the same directory)

docker build -t (tags) <name of the image>:<version> eg: demo1:v2

docker build -t --user root (this is how we run a container using a specific user) - this is used when there are some permission issues in the container itself. 

docker build -f <path to the directory> <path to the files requries by the container> -> docker build -f /home/ec2-user/(Dockerfile)or(demo)<name of the file that contains the docker configuration> /home/ec2-user <this is how we mention the path required for the files required by docker as part of configuration eg usage of this is for COPY layer>

every step in the configuration file is called layer.

if there are layers already as part of build it will re-use those layers.

Eg Dockerfile configuration file: 

FROM docker.io/nginx:latest 

RUN rm -rf /usr/share/nginx/html/* 

COPY index.html /usr/share/nginx/html/index.html    

so we are using Podman in the name of docker.

so, in podman there is a concpet of rootless = true/false. why is this important: rootless means the concept of root user having highest authority and access to everything wont be supported here.

for example: i have created the some images by ec2-user and some other root. but when i took docker images the images shown for ec2-user will be dofferent from root as the podman is currently configured to run in rootless mode.

now, how to see if the podman is running rootless or root. <podman info | grep "rootless"> if it is true. then podman isolates the space for every user including root. even root cant see images of all the users.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

after the image is build we can view the existing images using docker images this command lists all the images present for that specific users.

Now to run a container -> docker run -d <detached mode> -p portno<host machine>:portno<container port> <image-id>.

docker run -d -p 80:80 <image-id>/<image-name:version>

how to stop a container: docker stop <container-ID>

how to remove a image: docker rmi <iamge-ID> we will receive an error if the containers using this images are still running. so we have to stop the containers before deleting the images.

In fact we will get the containers details which are using this image.

if there is any issues and we have to forcefully delete an image docker rmi -f <image-ID> this delete the containers and also remove the container image.

docker image prune -> delete all the images which are not assiociated with a container.

dangling images.

just stopping a container wont suffice we have to delete it using the docker rm <container-ID> command for the removal of the image.

docker exec -it <container-ID> bash

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In linux, a process can have a parent process. means killing the parent process can kill all the child process assiocated with it.

how to see the parent and child process: ps -ef will show what is the parent process for a child process.
















