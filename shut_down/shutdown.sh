#!/bin/bash

read -p "Enter file name and its extension: " FILE
echo checking file
pmsg=0
while ! [ -e ${FILE} ]
do
	if [ ${pmsg} -eq 0 ]
	then
		echo Downloading file ${FILE} [Press CTRL+C to Stop this script]
		pmsg=1
	fi
done
echo download is finished
shutdown -P
