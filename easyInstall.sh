#!/bin/bash

# Downloads and install a .dmg from a file containing URL's
# Example: appReq.dgp
# As long as the .dmg url is inside single quotes, eg:
# something=='http://the.url.com/thing.dmg'
# This script will download it
#
# If the URL is in double quotes, a browser will open that link
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

openBrowser() {
	echo "Opening Browser - $1"
	python -mwebbrowser "$1"
}


while read line
do
	in=$line

	IFS="'" read x whatiwant y <<< "$in"
	if [ -n "$whatiwant" ]; then
    	getDMGs "$whatiwant"
	fi

	IFS="\"" read x theBrowserLink y <<< "$in"
	if [ -n "$theBrowserLink" ]; then
    	openBrowser "$theBrowserLink"
	fi
	     
done < $1





