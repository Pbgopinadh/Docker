FROM docker.io/nginx:latest 
# FROM is used to mention the base image that we use to run a container

RUN rm -rf /usr/share/nginx/html/*
#RUN is used to run a bash command in the container it self.

COPY index.html /usr/share/nginx/html/index.html
#COPY is used to copy the file from the OS to the Container path.

EXPOSE 81



