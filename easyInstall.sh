#!/bin/bash

# Downloads and install a .dmg from a file containing URL's
#
# Usage
# $ easyInstall [app requirements file]
# 
# For example, for installing all the apps in appReq.dgp
# $ dmginstall appReq.dgp
#

if [[ $# -lt 1 ]]; then
  echo "Usage: easyInstall [requirements file]"
  exit 1
fi

getDMGs() {
    url="$1"
    # Generate a random file name
	tmp_file=/tmp/`openssl rand -base64 10 | tr -dc '[:alnum:]'`.dmg
	apps_folder='/Applications'
 
	# Download file
	echo "Downloading $url..."
	curl -# -L -o $tmp_file $url
 
	echo "Mounting image..."
	volume=`hdiutil mount $tmp_file | tail -n1 | perl -nle '/(\/Volumes\/[^ ]+)/; print $1'`
 
	# Locate .app folder and move to /Applications
	app=`find $volume/. -name *.app -maxdepth 1 -type d -print0`
	echo "Copying `echo $app | awk -F/ '{print $NF}'` into $apps_folder..."
	cp -ir $app $apps_folder
 
	# Unmount volume, delete temporal file
	echo "Cleaning up..."
	hdiutil unmount $volume -quiet
	rm $tmp_file
 
	echo "Done!"
}


while read line
do
	in=$line

	IFS="'" read x whatiwant y <<< "$in"
	if [ -n "$whatiwant" ]; then
    	getDMGs "$whatiwant"
	fi
	     
done < $1





