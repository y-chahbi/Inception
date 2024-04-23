# Inception 


builed an image :: docker build -t tagname . -> building an image withe the tag name and where the dockerfile is.
show images :: docker image ls || docker images
show stop containers :: docker ps -a
start a container and intract with it :: docker run -it tagname -> run and enter to the container names tagname.

run an image :: docker run tagname -> start a cotainer from an image its calssed the tagname. if the image is not in localmachine it will pull it from the official website
download image using docker :: docker pull image

delete all containers :: docker system prune -a

start : docker-compose -f docker-compose.yml up --build
stop : docker-compose down --rmi all --volumes --remove-orphans



/////////////////////////////////////////




# Docker vs Virtual Machines

## What is Docker?
Docker is a tool used to package applications along with their dependencies and requirements, enabling them to be used and accessed from anywhere. It provides a consistent environment for applications to run in, regardless of the underlying infrastructure.

## How is Docker different from Virtual Machines?
While Docker and virtual machines both provide isolation and allow running multiple applications on a single physical host, they operate differently.

### Docker:
- Docker containers share the host operating system kernel, making them lightweight and efficient.
- They package only the application and its dependencies, resulting in faster startup times and lower overhead.
- Docker containers can be easily moved between different environments, such as development, testing, and production.

### Virtual Machines:
- Virtual machines emulate an entire physical computer, including the operating system, on top of which applications run.
- They require a hypervisor to manage and allocate resources, which introduces overhead.
- Each virtual machine has its own operating system, leading to larger resource consumption and slower startup times compared to Docker containers.

## What is operating system?
The OS is software that manages computer hardware and provides services for computer programs, It acts as an intermediary between the computer hardware and the user applications.

### What is Kernel Mode?
Its where the operating system has full control without restriction.

### What is User Mode?
Its a regular mode where applications and users do their work. and system resources is restricted, and direct access to critical system functions is not allowed.

### What is Cgroups?
Control Groups (cgroups) is a Linux kernel feature that allows you to limit, allocate, set priorities for different groups of processes, and isolate resource usage (such as CPU, memory, disk I/O, and network bandwidth) among a collection of processes. It provides a way to organize processes hierarchically and apply resource constraints or priorities to them.

### What is Namespaces?
Namespaces in Linux act like virtual partitions, dividing up system resources so that different processes can have their own isolated environments. Each namespace provides a specific type of isolation: the PID namespace for processes, the network namespace for network resources, the mount namespace for file systems, the user and group namespaces for user and group IDs, the UTS namespace for hostnames, and the IPC namespace for inter-process communication resources. This separation allows processes to run independently and securely, making namespaces crucial for technologies like containerization, where each container needs its own isolated environment to operate efficiently.

## Why do we need Virtual Machines?
Virtual machines are useful in scenarios where:
- Different operating systems are required for running applications.
- Applications need to be isolated from one another for security or compatibility reasons.
- Resources of a single physical server need to be divided into multiple smaller units to run multiple instances of operating systems or applications.

### Why we use Docker containers insted of Virtual Machines:
- because they share the host system's kernel, unlike virtual machines, which require their own operating system. This means Docker containers have lower overhead and use fewer resources.




## Conclusion
Docker and virtual machines serve different purposes and have their own advantages and use cases. Docker is favored for its lightweight nature and fast deployment capabilities, while virtual machines provide stronger isolation and support for running different operating systems on the same hardware.




































