#!/bin/bash
sudo yum install yum-utils -y
sudo yum-config-manager --add-repo=https://packages.microsoft.com/config/rhel/7/prod.repo
sudo rpm --import http://packages.microsoft.com/keys/microsoft.asc
yum makecache
sudo yum install mdatp -y
wget https://alicesap.blob.core.windows.net/suseiso/MicrosoftDefenderATPOnboardingLinuxServer.py
sudo chmod +x MicrosoftDefenderATPOnboardingLinuxServer.py
sudo python3 MicrosoftDefenderATPOnboardingLinuxServer.py
