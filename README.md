# c-dev_env
This is a script to develop a docker image for a C programming environment.

Clone this repository into your terminal using WSL. You should have docker installed on your computer if you area windows user or have linux as your main OS.

Command 1:

docker build -t c-dev-env .

-t c-dev-env: Names your image "c-dev-env"

.: Build context (current directory containing Dockerfile)

Command 2:

docker run -it --rm -v $(pwd):/workspace --name my-c-dev c-dev-env

-it: Interactive terminal

--rm: Automatically remove container when exited

-v $(pwd):/workspace: Mount current directory to /workspace

--name my-c-dev: Name your container (optional)
The second command runs your "chroot" environment or your docker container.
At this point you should see the docker image in your docker desktop list.

Next Steps:

Create some new C projects and test your code to ensure the environment is set up properly. Here's an example of commands to run to test that the environment is sound:

# Compile a test program
gcc -g -o hello hello.c

# Debug with GDB
gdb ./hello

# Check for memory leaks
valgrind ./hello

# Useful Commands
Command	Description
docker ps -a	List all containers
docker exec -it my-c-dev bash	Attach to running container
docker images	List installed images
docker stop my-c-dev	Stop container

