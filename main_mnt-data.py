#!/usr/bin/env python3

import os
import subprocess
from subprocess import call
import time
        
print('#'*64)
print('DO NOT USE THIS UNLESS YOU HAVE /mnt/docker/')
# This assumes you have docker installed.
# This will create a $HOME/docker/ directory 
needProxy = input('Need NginxProxyManager: ').upper()
needDNS = input('Need PiHole DNS: ').upper()
needUptime = input('Need UptimeKuma: ').upper()
needPortainer = input('Need Portainer: ').upper()
needFlame = input('Need Homepage: ').upper()
needIperf = input('Need IPerf: ').upper()
needWiki = input('Need Wiki: ').upper()
needPlex = input('Need Plex: ').upper()
needMealie = input('Need Mealie: ').upper()
needBitwarden = input('Need Bitwarden: ').upper()
needPing = input('Need Smokeping: ').upper()
needBudget = input('Need Budget: ').upper()
needOpenSpeedtest = input('Need SpeedTest: ').upper()
needDockerLogs = input('Need Docker Logs: ').upper()
needSpeedtestLogger = input('Need Speedtest Logger: ').upper()
needWger = input('Need Wger: ').upper()
needPodgrab = input('Need Podgrab: ').upper()

print('#'*64)
if needProxy == 'Y':
    subprocess.run(["bash", "scripts/installProxy.sh"])
if needDNS == 'Y':
    subprocess.run(["bash", "scripts/installDNS.sh"])
if needUptime == 'Y':
    subprocess.run(["bash", "scripts/installUptimeKuma.sh"])
if needPortainer == 'Y':
    subprocess.run(["bash", "scripts/installPortainer.sh"])
if needIperf == 'Y':
    subprocess.run(["bash", "scripts/installIperf.sh"])
if needWiki =='Y':
    subprocess.run(["bash", "scripts/installWiki.sh"])
if needPlex == 'Y':
    subprocess.run(["bash", "scripts/installPlex.sh"])
if needBitwarden == 'Y':
    subprocess.run(["bash", "scripts/installBitwarden.sh"])
if needFlame == 'Y':
    subprocess.run(["bash", "scripts/installFlame.sh"])
if needBudget == "Y":
    subprocess.run(["bash", "scripts/installBudget.sh"])
if needOpenSpeedtest == "Y":
    subprocess.run(["bash", "scripts/installOpenspeedtest.sh"])
if needMealie == 'Y':
    subprocess.run(["bash", "scripts/installMealie.sh"])
if needPing == 'Y':
    subprocess.run(["bash", "scripts/installSmokeping.sh"])
if needDockerLogs == 'Y':
    subprocess.run(["bash", "scripts/installDozzle.sh"])
if needSpeedtestLogger == 'Y':
    subprocess.run(["bash", "scripts/installSpeedtestLogger.sh"])
if needWger == 'Y':
    subprocess.run(["bash", "scripts/installWger.sh"])
if needPodgrab == 'Y':
    subprocess.run(["bash", "scripts/installPodgrab.sh"])