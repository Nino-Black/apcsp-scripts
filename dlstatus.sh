#!/bin/bash

Droplets="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

echo

for droplet in $Droplets ; do
 ping -c 1 $droplet > /dev/null 2>&1
 echo $? > /dev/null 2>&1
 if [ $droplet = 0  ] ; then
  echo "$droplet : alive"; echo
 else
  echo "$droplet : dead"; echo 
 fi

done

exit 0

