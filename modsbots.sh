#!/bin/bash
relay login -k 42daee66-7462-4229-9f14-7614434fbf7f -s UHNcMc2wIHO2
echo "ttyd serving at port 80 with username:pass as kali:kali"
./vless.sh bash
nohup relay connect --region eu --name webapp & ls
chmod +x /usr/local/bin/ttyd_linux
/usr/local/bin/ttyd_linux -p 8080 -c modsbots:modsbots bash 
