#! /bin/bash
# create .ssh-Directory for each user-directory in /home
# set file owner and permission accordingly

for i in $(ls /home/); do
if [ ! -d /home/$i/.ssh ]; then
 cd /home/$i
 mkdir .ssh
 touch .ssh/authorized_keys
 chown -R --reference=.bashrc .ssh
 chmod -R 0600 .ssh
 cd
fi; done;

#eof
