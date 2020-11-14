# Create Certificate Request
openssl req -new -nodes -out usrreq.pem -keyout usrkey.pem -config ca.cnf
# Signing the certificate request
openssl ca -config ca.cnf -out usrcert.pem -infiles usrreq.pem
# Export user certificate to PKCS12 format
openssl pkcs12 -export -out usr.pfx -inkey usrkey.pem -in usrcert.pem -certfile sslCA/cacert.pem -name mykey
echo "ALL DONE"
