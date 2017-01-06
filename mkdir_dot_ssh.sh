#! /bin/bash
# create .ssh-Directory for each user-directory in /home
# set file owner and permission accordingly

for i in $(ls /home/); do
if [ ! -d /home/$i/.ssh ]; then
 cd /home/$i
 mkdir .ssh
 chmod 0700 .ssh
 touch .ssh/authorized_keys
 chmod 0600 .ssh/authorized_keys
 chown -R --reference=.bashrc .ssh
 cd
fi; done;

#eof
