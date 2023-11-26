# Homelab-Setup
homelab script

Run the ``main.py`` script to semi-auto install various applications. Assumes Docker and Docker-compose are installed. Answer Y/N (y/n) to the questions if you need them installed. The script calls bash scripts within the scripts folder, pulls compose files (where applicable) from the files directory, and runs them within the $HOME/docker/$app/ directory. Added functionality to automatically add the docker containers to the proxy_default network (created by nginxproxymanager). 


### To Do
[x] Automate proxy connectivity (currently need to go into Portainer and flip network to proxy_default)
- Automate OS setup

## Examples

```
# bl @ bl-de in ~/dev/Homelab-Setup on git:main o [7:32:44]
$ ./main.py
Enter the directory path to run the services [/home/bl/docker/]:
BL Homelab Script
Answer Y/N to the following
################################################################
Need NginxProxyManager:
Need PiHole DNS:
Need Cloudflare DDNS:
Need UptimeKuma:
Need Smokeping:
Need Portainer:
Need Homepage:
Need IPerf:
Need Wiki:
Need Mealie:
Need SpeedTest:
Need eBook:
```


```
bl@bl-jp ~/dev/Homelab-Setup (main*?) $ ./main.py 
BL Homelab Script
Answer Y/N to the following
################################################################
Need NginxProxyManager: n
Need PiHole DNS: n
Need UptimeKuma: n
Need Portainer: n
Need IPerf: n
Need Wger: y
Need CodeWeb: n
Need Startpage: n
Need Wiki: n
################################################################
Installing Wger
Cloning into '/home/bl/docker/wger'...
remote: Enumerating objects: 64, done.
remote: Counting objects: 100% (64/64), done.
remote: Compressing objects: 100% (50/50), done.
remote: Total 64 (delta 26), reused 43 (delta 14), pack-reused 0
Receiving objects: 100% (64/64), 23.01 KiB | 3.83 MiB/s, done.
Resolving deltas: 100% (26/26), done.
[+] Running 1/9
 ⠏ cache Pulling                                                                                                
[+] Running 7/7
 ⠿ Volume "wger_postgres-data"  Created                                                                                   0.0s
 ⠿ Volume "wger_static"         Created                                                                                   0.0s
 ⠿ Volume "wger_media"          Created                                                                                   0.0s
 ⠿ Container wger-cache-1       Started                                                                                   0.7s
 ⠿ Container wger-db-1          Started                                                                                   0.7s
 ⠿ Container wger-web-1         Started                                                                                   1.7s
 ⠿ Container wger-nginx-1       Started                                                                                   2.8s
Wger Complete
################################################################

bl@bl-jp ~/dev/Homelab-Setup (main*?) $ docker ps
CONTAINER ID   IMAGE                             COMMAND                  CREATED              STATUS                 PORTS                                                                                                                             NAMES
b6cff6db7363   wger_nginx                        "/docker-entrypoint.…"   About a minute ago   Up About a minute      0.0.0.0:8086->80/tcp, :::8086->80/tcp                                                                                             wger-nginx-1
d6a02109dc93   wger/server:latest                "/home/wger/entrypoi…"   About a minute ago   Up About a minute      0.0.0.0:49154->8000/tcp, :::49154->8000/tcp                                                                                       wger-web-1
72f07d08349e   redis:latest                      "docker-entrypoint.s…"   About a minute ago   Up About a minute      6379/tcp                                                                                                                          wger-cache-1
b632f485d38c   postgres:12-alpine                "docker-entrypoint.s…"   About a minute ago   Up About a minute      5432/tcp                                                                                                                          wger-db-1
```
