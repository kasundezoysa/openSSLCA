# openSSLCA
A sample script to create a simple CA by using openssl

#In case you donot have openssl follow these instructions

Setup Ubuntu Iamge with openssl
-------------------------------
1. Download and install docker from store.docker.com https://docs.docker.com/docker-for-windows

2. Build a Docker image

docker build -t openssl .

3. Run a docker continer mapping to your current directory to home

docker run --rm -it -v ${PWD}:/home --name openssl  openssl

3. You will get the bash prompt. Then change the directory to /home and execute 

chmod +x *.sh 

(View docker.txt file to see more docker commands)


Setup a CA
----------
1. execute createCA.sh script. 
   It will create your own CA.
   Make sure to give a proper common name to your CA (eg. UCSC CA).
   Your CA server's public key file is cacert.pem. 
   It is in the sslCA directory. 
   This public key has to be configured as 
   trusted certificate in your application.

2. execute createHostCert.sh script. 
   Make sure to give a domain name/ip address as the common name (eg. www.scorelab.org).
   Your Web server private key and certificate will be created. 
   Your private keyfile is hostkey.pem and  certificate file is  hostcert.pem.
   You can point these files by editing the  htttpd-ssl.conf.

3. execute createUserCert.sh.
   Make sure to give your correct name and e-mail address.
   It will create your own personal certificate. 
   Your private key and certificates are packed into usr.pfx file. 
   You can import it to your browser, e-mail or any other application.





