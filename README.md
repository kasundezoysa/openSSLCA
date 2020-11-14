# openSSLCA
A sample script to create a simple CA by using openssl

#In case you donot install opensll, let's use openssl docker
Download and install docker from store.docker.com https://docs.docker.com/docker-for-windows

#Build a Docker image

docker build -t openssl .

#Run a docker continer mapping to your current directory to home

docker run --rm -it -v ${PWD}:/home --name openssl  openssl

#After you get the promt, change the directory to /home follows the rest of the commands
(View docker.txt file to see more docker commands)

#### Setup a CA ###



