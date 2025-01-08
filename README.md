```
# ----------------------------------------------------- INCEPTION ------------------------------------------------
```
<img width="679" alt="Screen Shot 2025-01-07 at 11 11 42 AM" src="https://github.com/user-attachments/assets/ae4519eb-4a05-4da9-98dd-28ca7c994b98" />

# What is Docker ?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code, you can significantly reduce the delay between writing code and running it in production.

# Architecture of Docker

## 1). Docker Engine

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
# 1. Docker and Namespaces: How Docker Provides Isolation

<img width="707" alt="Screen Shot 2025-01-08 at 10 45 15 AM" src="https://github.com/user-attachments/assets/79346858-8b1c-4ae6-9604-5f48389b34f8" />

When Docker creates a container, it uses Namespaces to isolate the container’s environment from the host system and other containers. Here's how each type of namespace is used in Docker :

## a. Process Isolation with PID Namespace
+ What it does: The PID (Process ID) namespace isolates the process IDs inside the container. This means each container has its own set of process IDs, and processes inside a container can’t see or interact with processes outside the container.

+ Docker’s Role: When you run a container, Docker sets up a separate PID namespace for that container. Inside the container, the process running in the foreground (such as a web server or database) will have PID 1, just like the init process does on a real Linux system. However, this PID is completely isolated from the host system or other containers.
  
+ Why it's important: This ensures that containers don’t interfere with each other’s processes and that they appear to have their own independent system processes.
## Networking Isolation with Network Namespace
+ The Network namespace isolates network interfaces, IP addresses, routing tables, and firewall rules. This ensures that each container has its own independent network stack.
## User Isolation with User Namespace
+ The User namespace allows containers to have their own user and group ID mappings. It ensures that a process inside a container can run as root (user ID 0) within the container, but the host system might assign it a different user ID for security purposes.
## e. IPC Isolation with IPC Namespace
+ The IPC (Inter-Process Communication) namespace isolates the system’s inter-process communication mechanisms (e.g., shared memory, semaphores, and message queues).

# 2. Docker and Cgroups: How Docker Manages Resources
<img width="255" alt="Screen Shot 2025-01-08 at 10 53 58 AM" src="https://github.com/user-attachments/assets/4d9284a2-6f7a-4ce7-af5e-520be3ad4dd6" />

Once Docker has isolated the container’s environment using namespaces, it must manage how the container uses system resources. This is where Cgroups (Control Groups) come in. Cgroups allow Docker to allocate and limit CPU, memory, and other resources that containers can use, ensuring fair distribution and preventing one container from using all available resources.

## a. Resource Limiting with Cgroups
+ Cgroups allow you to control and limit the resources (such as CPU, memory, and disk I/O) that a container can use. Each container is assigned to its own cgroup, which restricts the amount of CPU and memory it can consume.
## b. CPU Management with Cgroups
+ Cgroups can limit how much CPU a container can use. You can set CPU limits based on percentage usage or CPU shares (relative weight between containers).
## d. Block I/O Management with Cgroups
+ Cgroups can limit how much disk I/O (reading and writing data) a container can perform, ensuring that containers do not hog the disk resources.

# Daigram Of the expected Result For this Project  
<img width="792" alt="Screen Shot 2025-01-07 at 11 08 08 AM" src="https://github.com/user-attachments/assets/21fb862b-2800-468e-b585-c0f1a0ec5e19" />

# So we Can Implement the Daigram Below we Will Split Things To Steps So we can Implement Everything Clearly in a Clear Easy WAY > 

