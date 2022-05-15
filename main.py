#!/usr/bin/env python3

import os
import subprocess
from subprocess import call
import time
        
print('BL Homelab Script')
print('Answer Y/N to the following')
print('#'*64)
# This assumes you have docker installed.
# This will create a $HOME/docker/ directory 
needProxy = input('Need NginxProxyManager: ').upper()
needDNS = input('Need PiHole DNS: ').upper()
needUptime = input('Need UptimeKuma: ').upper()
needPortainer = input('Need Portainer: ').upper()
needIperf = input('Need IPerf: ').upper()
needWger = input('Need Wger: ').upper()
needCode = input('Need CodeWeb: ').upper()
needStartpage = input('Need Startpage: ').upper()
needWiki = input('Need Wiki: ').upper()
needPlex = input('Need Plex: ').upper()
needMealie = input('Need Recipes: ').upper()
needBitwarden = input('Need Bitwarden: ').upper()
needPing = input('Need Smokeping: ').upper()
needBudget = input('Need Budget: ').upper()
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
if needWger == 'Y':
    subprocess.run(["bash", "scripts/installWger.sh"])
if needCode =='Y':
    subprocess.run(["bash", "scripts/installCode.sh"])
if needStartpage =='Y':
    subprocess.run(["bash", "scripts/installStartpage.sh"])
if needWiki =='Y':
    subprocess.run(["bash", "scripts/installWiki.sh"])
if needPlex == 'Y':
    subprocess.run(["bash", "scripts/installPlex.sh"])
if needBitwarden == 'Y':
    subprocess.run(["bash", "scripts/installBitwarden.sh"])
if needFlame == 'Y':
    subprocess.run(["bash", "scripts/installFlame.sh"])
if needBudget == "Y":
    subprocess.run(["bash", "scripts/installFirefly.sh"])