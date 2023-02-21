#!/bin/bash 

#To add users to a specified group, the group must exist before. 
#If the group is not specified then by default a new group is created 
# with group name same as username.
#Since in our case user name and groupnames are different so first we need to create the groups


for groupname in logistics inventory management apps database
do
    sudo groupadd $groupname
done



#list the groups and users to be added
groups=("logistics" "inventory" "management" "apps" "database")
users=("jterry" "kwalker" "jdoe" "mowen" "msilva")

#Now create the users and add them into respective groups


for ((i=0; i<${#users[@]}; i++))
do
  #add a new user and mount to specific directories
  sudo useradd -m -d /home/${groups[$i]} -b /${groups[$i]} ${users[$i]}
  
  #Now add the user to the specific group
  sudo usermod -a -G  ${groups[$i]} ${users[$i]}
  
  #Then set the ownership of the directory
  sudo chown  ${users[$i]}:${groups[$i]} /home/${groups[$i]}


done

#Now set the file access permissions for each directory as given
sudo chmod 660 /home/logistics

#Here 1st 6(4+2+0 or read, write)  for owner
#second 6(4+2+0 or read, write) for group 
#and last 0(0+0+0 or no permission) for others

sudo chmod 644 /home/inventory
sudo chmod 640 /home/management
sudo chmod 644 /home/apps
sudo chmod 640 /home/database
