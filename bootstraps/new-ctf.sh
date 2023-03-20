#!/bin/bash

if [ -z $2  ]; then
  echo "new-ctf <ctf_name> <provider>"
else
  mkdir $2/$1
  cd $2/$1
  mkdir exploits loot scans screenshots tools
  ln -s /opt /home/jesse/machines/$2/$1/tools
  sudo save-screenshots-here ./screenshots 
  wget https://raw.githubusercontent.com/jplesperance/oscp/main/bootstraps/fuzzer.py -O exploits/fuzzer.py
  wget https://raw.githubusercontent.com/jplesperance/oscp/main/bootstraps/exploit.py -O exploits/exploit.py
  wget https://raw.githubusercontent.com/jplesperance/oscp/main/bootstraps/katz2crack.py -O exploits/katz2crack.py
  wget https://raw.githubusercontent.com/jplesperance/oscp/main/guides/buffer-overflow-guide.md -O exploits/bof-worksheet.md
  wget https://raw.githubusercontent.com/jplesperance/oscp/main/report/README.md
  wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh -O exploits/lse.sh
  wget https://raw.githubusercontent.com/jplesperance/main/bootstraps/BOX.ctb -O $1.ctb
  ls -al
fi
cd /home/jesse/machines/$2/$1
