#!/bin/sh
##############################################
# CA Creator
# http://www.freebsdmadeeasy.com/
#
# This Script creates a certificate of authority
# using OpenSSL. It was written and tested on
# FreeBSD 6.1-RELEASE  Use at your own risk
#
#
##############################################


echo "Setting up the directories"
mkdir ./sslCA
echo "sslCA"
mkdir ./sslCA/certs
echo "sslCA/certs"
mkdir ./sslCA/private
echo "sslCA/private"
mkdir ./sslCA/newcerts
echo "sslCA/newcerts"

cd ./sslCA
echo 1000 > serial
touch index.txt

echo "Creating the CA"
echo "Use a strong password and keep it safe!"
openssl req -new -x509 -days 3650 -extensions v3_ca -keyout private/cakey.pem -out cacert.pem -config ../ca.cnf

more ./cacert.pem
more ./private/cakey.pem

echo "sslCA/cacert.pem"
echo "sslCA/private/cakey.pem"

echo "All Done!"


