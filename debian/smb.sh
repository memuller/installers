#!/bin/bash

# adds support for SMB3 protocol for W10
grep -q "SMB3" /etc/samba/smb.conf
if [ $? != 0 ]; then
  sudo sed -i '' -e '/workgroup = /a\' -e 'client max protocol = SMB3' /etc/samba/smb.conf 
fi;

sudo apt-get install cifs-utils smbclient
