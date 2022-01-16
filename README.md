# Homelab-Setup
homelab script

Run the ``main.py`` script to semi-auto install various applications. Assumes Docker and Docker-compose are installed.

Answer Y/N (y/n) to the questions if you need them installed. The script calls bash scripts within the scripts folder, pulls compose files (where applicable) from the files directory, and runs them within the $HOME/docker/$app/ directory. 

```
bl@bl-jp ~/dev/Homelab-Setup (main) $ ./main.py 
BL Homelab Script
Answer Y/N to the following
################################################################
Need NginxProxyManager: n
Need PiHole DNS: n
Need UptimeKuma: n
Need Portainer: n
Need IPerf: n
Need Wger: n
Need CodeWeb: n
Need Startpage: n
Need Wiki: y
################################################################
Installing Wiki
mkdir: cannot create directory ‘/home/bl/docker/wiki’: File exists
mkdir: cannot create directory ‘/home/bl/dev/’: File exists
mkdir: cannot create directory ‘/home/bl/dev/wiki’: File exists
[+] Running 1/0
 ⠿ Container wiki  Running                                                                                                0.0s
fatal: destination path '/home/bl/dev/wiki' already exists and is not an empty directory.
Wiki up
################################################################
```
