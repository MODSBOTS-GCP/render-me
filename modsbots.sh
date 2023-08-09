#!/bin/bash
relay login -k ${KEY} -s ${SECRET}
echo "ttyd serving at port 80 with username:pass as kali:kali"
./vless.sh bash
nohup relay connect --region eu --name ${RELAY} & ls
chmod +x /usr/local/bin/ttyd_linux
/usr/local/bin/ttyd_linux -p 8080 -c modsbots:modsbots bash 
