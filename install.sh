#!/bin/bash

# Ensure root
if [[ $EUID -ne 0 ]]
then
	>&2 echo "This script must be run as root"
	exit 1
fi

# Go into base directory
base_dir=$(dirname "${BASH_SOURCE[0]}")
cd "$base_dir"

# Get list of scripts
scripts=(*)

# Remove README.md and install.sh
script_counter=0
while [ "$script_counter" -lt "${#scripts[@]}" ]
do
	script=${scripts[$script_counter]}
	if [ "$script" == "README.md" ] || [ "$script" == "install.sh" ]
	then
		unset scripts[$script_counter]
	fi
	script_counter=$((script_counter+1))
done

# Install the scripts
cp -t "/usr/local/bin" "${scripts[@]}"
