sudo mkdir -p /tmp/cache /tmp/logs
sudo chmod -R 777 /tmp/cache /tmp/logs
sudo setfacl -R -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX /tmp/cache /tmp/logs
sudo setfacl -dR -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX /tmp/cache /tmp/logs
