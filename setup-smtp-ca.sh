mkdir -p /root/.certs/
echo -n | openssl s_client -connect smtp.exmail.qq.com:465 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ~/.certs/qq.crt
certutil -A -n "GeoTrust SSL CA" -t "C,," -d ~/.certs -i ~/.certs/qq.crt
certutil -A -n "GeoTrust Global CA" -t "C,," -d ~/.certs -i ~/.certs/qq.crt
certutil -A -n "GeoTrust SSL CA - G3" -t "Pu,Pu,Pu" -d ~/.certs/./ -i qq.crt
certutil -L -d /root/.certs
