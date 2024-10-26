FROM docker.io/redhat/ubi9:latest 
# FROM is used to mention the base image that we use to run a container

RUN dnf install -y nginx

RUN rm -rf /usr/share/nginx/html/*
#RUN is used to run a bash command in the container it self.

COPY index.html /usr/share/nginx/html/index.html
#COPY is used to copy the file from the OS to the Container path.

EXPOSE 8081
#EXPOSE layer does dont do anything specifically other than it saying to the human what ports are/should be used.

ENTRYPOINT ["nginx", "-g", "daemon off;"]

# issues faced when docker run as a non-root user: well docker run -d -p 80:80 imageid -> recieved error that 80 is a priviledged port and suggedted to use ports >= 1024 as the non-root user have no access over the special port.
# every command like COPY, EXPOSE, RUN are called layers in docker. every layer has its own fucntion to perform. if two images when building have same layer in their docker file. docker re-uses that layer instead of re-creating it. thus descresing the size of the docker file.



