#!/bin/bash

#gooi
# Making directories recursively, and change the user & group & permission based on parent directory
# ./mkdirre.sh /path/1/data/storage/project/development/type/address


# -e enable interpretation of backslash escapes.
echo -e "Path entered is : $1"
echo -e "Making the directory"
sudo mkdir -p $1

echo -e "Current directory"
cd $1
pwd

echo -e "Capture user & group for path/1/data"
user=$(ls -ld /path/1/data | awk '{print $3}')
group=$(ls -ld /path1/data | awk '{print $4}')
permission=$(ls -ld /path/1/data | awk
sudo chmod -R 775 /path/1/data
sudo chown -R $user:$group /path/1/data 

file_user=$(ls -ld $1 | awk '{print $3}')
file_group=$(ls -ld $1 | awk '{print $4}')
file_permission=$(ls -ld $1 | awk '{print $5}')

if [ $user == $file_user ] && [ $group == $file_group ] && [ $permission == $file_permission ]; then
  echo -e " User, Group, Permission is correct"
  elif [ "$?" == 0 ]; then
    echo "Permission did not match, please verify it manually"
    exit 1
fi
