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
#needPortainer = input('Need Portainer: ').upper()
#needIperf = input('Need IPerf: ').upper()
#needBitwarden = input('Need Bitwarden: ').upper()
#needPing = input('Need Smokeping: ').upper()
#needBudget = input('Need Budget: ').upper()
#needWger = input('Need Wger: ').upper()
needCode = input('Need CodeWeb: ').upper()
print('#'*64)
if needProxy == 'Y':
    print('Installing Proxy')
    subprocess.run(["bash", "scripts/installProxy.sh"])
    print('Proxy Complete')
if needDNS == 'Y':
    print('Installing PiHole')
    subprocess.run(["bash", "scripts/installDNS.sh"])
    print('DNS Complete')
if needUptime == 'Y':
    print('Installing UptimeKuma')
    subprocess.run(["bash", "scripts/installUptimeKuma.sh"])
    print('UptimeKuma Complete')
if needCode =='Y':
    print('Installing Code')
    subprocess.run(["bash", "scripts/installCode.sh"])
    print('Code up')
print('#'*64)