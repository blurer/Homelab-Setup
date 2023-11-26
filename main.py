#!/usr/bin/env python3

import os
import subprocess
from subprocess import call
import time

default_path = "/home/bl/docker/"
user_path = input(f"Enter the directory path to run the services [{default_path}]: ") or default_path
if not os.path.exists(user_path):
    try:
        os.makedirs(user_path)
    except OSError as error:
        print(f"Error creating directory: {error}")
        # Handle error or exit

print('BL Homelab Script')
print('Answer Y/N to the following')
print('#'*64)
# This assumes you have docker installed.
# This will create a $HOME/docker/ directory 
needProxy = input('Need NginxProxyManager: ').upper()
needDNS = input('Need PiHole DNS: ').upper()
needDDNS = input('Need Cloudflare DDNS: ').upper()
needUptime = input('Need UptimeKuma: ').upper()
needSmokePing = input('Need Smokeping: ').upper()
needPortainer = input('Need Portainer: ').upper()
needFlame = input('Need Homepage: ').upper()
needIperf = input('Need IPerf: ').upper()
#needWger = input('Need Wger: ').upper()
#needCode = input('Need CodeWeb: ').upper()
needWiki = input('Need Wiki: ').upper()
#needPlex = input('Need Plex: ').upper()
needMealie = input('Need Mealie: ').upper()
#needBitwarden = input('Need Bitwarden: ').upper()
#needPing = input('Need Smokeping: ').upper()
#needBudget = input('Need Budget: ').upper()
needOpenSpeedtest = input('Need SpeedTest: ').upper()
needEbook = input('Need eBook: ').upper()
#
#print('#'*64)
if needProxy == 'Y':
    subprocess.run(["bash", "scripts/installProxy.sh", user_path])
if needSmokePing == 'Y':
    subprocess.run(["bash", "scripts/installSmokeping.sh", user_path])
if needDNS == 'Y':
    subprocess.run(["bash", "scripts/installDNS.sh"])
if needUptime == 'Y':
    subprocess.run(["bash", "scripts/installUptimeKuma.sh", user_path])
if needPortainer == 'Y':
    subprocess.run(["bash", "scripts/installPortainer.sh", user_path])
if needDDNS == 'Y':
    subprocess.run(["bash", "scripts/installDDNS.sh", user_path])
if needIperf == 'Y':
    subprocess.run(["bash", "scripts/installIperf.sh"])
#if needWger == 'Y':
#    subprocess.run(["bash", "scripts/installWger.sh"])
#if needCode =='Y':
#    subprocess.run(["bash", "scripts/installCode.sh"])
if needWiki =='Y':
    subprocess.run(["bash", "scripts/installWiki.sh", user_path])
#if needPlex == 'Y':
#    subprocess.run(["bash", "scripts/installPlex.sh"])
#if needBitwarden == 'Y':
#    subprocess.run(["bash", "scripts/installBitwarden.sh"])
if needFlame == 'Y':
    subprocess.run(["bash", "scripts/installFlame.sh"])
#if needBudget == "Y":
#    subprocess.run(["bash", "scripts/installBudget.sh"])
if needOpenSpeedtest == "Y":
    subprocess.run(["bash", "scripts/installOpenspeedtest.sh", user_path])
if needMealie == 'Y':
    subprocess.run(["bash", "scripts/installMealie.sh", user_path])
if needEbook == 'Y':
    subprocess.run(["bash", "scripts/installEbook.sh", user_path])