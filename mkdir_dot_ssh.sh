#! /bin/bash
# create .ssh-Directory for each user-directory in /home

for i in $(ls /home/);
do
if [ ! -d /home/$i/.ssh/ ]; then
 mkdir /home/$i/.ssh/
 touch /home/$i/.ssh/authorized_keys
#touch /root/$i
fi;
done
