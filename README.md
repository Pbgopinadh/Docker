# Container

Container is used to run application. it also can host OS. but it doesnt make sense to use the containter in that way.

Containers are package of the application and their related dependencies along with the required OS modules. (not all OS but required OS modules)

Containers work on a native linux features namely - control groups (C groups) and namespaces 

Control groups as the name suggest this is for the control or limit the resources
name spaces isolating the resources from other.

Docker is a container runtime.

Docker or any container runtime has some important components:

Client

daemon

container D : containerd is an open-source container runtime used to manage the lifecycle of containers. It’s a core component that handles the low-level details of running containers on a system, making it easier to work with containerized applications. Think of it as the engine that runs containers, while Docker and other container management tools sit on top to provide a user-friendly interface.

Docker is a high level runtime means it uses containerD as a base and provides a easy user experience on working with containers. 

 sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo - this is used to add a repo to the system.

![alt text](image.png)




