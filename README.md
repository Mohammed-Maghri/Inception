```
# ------------------------------------------------------- INCEPTION ------------------------------------------------
```
<img width="679" alt="Screen Shot 2025-01-07 at 11 11 42 AM" src="https://github.com/user-attachments/assets/ae4519eb-4a05-4da9-98dd-28ca7c994b98" />


# 1). Docker Engine

<img width="495" alt="Screen Shot 2025-01-07 at 4 43 32 PM" src="https://github.com/user-attachments/assets/0835e150-2fdb-4760-9be7-7d5321e17bf8" />


## The Docker Engine is a core component of Docker and plays a vital role in executing user commands. The main features of the Docker Engine are as follows:

+ Client-server architecture : When a user enters a command in Docker, it is transmitted to the Docker daemon (server) through the client and executed. This architecture is similar to the process in which a user issues a command to a computer.

+ Daemon Process : Responsible for creating and managing core objects in Docker. Without the Docker daemon, Docker itself cannot exist.

+ REST API :Provides a way for various applications to communicate with Docker. For example, this is the communication method used when another program asks Docker to run an image.

+ CLI (Command Line Interface) : A tool used by users to communicate with Docker. The CLI acts as a window for entering commands.

These components contribute to making Docker efficient and flexible. Thanks to the Docker engine, users can create and manage containers easily and quickly.

# 2. Docker Image
## Docker images are for running applications 
+ An image contains all the information and settings needed to run an application. A container can be created based on this image.
+ for an application that requires a web server, the image would contain the web server settings, required libraries, code, etc.
+ it is efficient because only the changed parts can be updated without having to recreate the entire image.

## These features make Docker images much easier and more efficient to deploy and manage applications.
# 3. Docker Container

<img width="756" alt="Screen Shot 2025-01-07 at 4 51 09 PM" src="https://github.com/user-attachments/assets/31d1f5e2-f8db-439f-92f6-d430cb325085" />

Docker container is an environment that embodies an image and actually runs it. This Activation of an image includes the concept: an image is like a stationary state, but a container makes it a running state. Therefore, a container is what gives life to an image.
In addition, containers independent execution execution provide . Each container has its own environment and operates in isolation from other containers. This prevents different containers from affecting each other and allows them to perform tasks independently. This is similar to devices operating independently in different rooms.

# 4. Docker Registry / Hub (Docker Registry / Hub)
<img width="765" alt="Screen Shot 2025-01-07 at 4 54 45 PM" src="https://github.com/user-attachments/assets/6ac118b2-e762-4318-9e70-9744cb0cb181" />

A Docker registry is a place to store and share images. It can be thought of as acting similarly to a library.
+ A hub for sharing : The Docker registry safely stores images, provides the ability to retrieve them when needed, and serves as a platform for sharing images with other users.
+ Docker Hub: Docker Hub is a public Docker registry where developers can upload and download images. Many standard images are already stored on Docker Hub , making them easy for users to access and use.

These Docker registry features play a vital role in container-based development environments, enabling efficient image management and deployment.

<img width="768" alt="Screen Shot 2025-01-07 at 4 48 44 PM" src="https://github.com/user-attachments/assets/fc967bb7-2797-46b8-b79a-6a6cd0745b1d" />

+
+
# Daigram Of the expected Result For this Project  
<img width="792" alt="Screen Shot 2025-01-07 at 11 08 08 AM" src="https://github.com/user-attachments/assets/21fb862b-2800-468e-b585-c0f1a0ec5e19" />
