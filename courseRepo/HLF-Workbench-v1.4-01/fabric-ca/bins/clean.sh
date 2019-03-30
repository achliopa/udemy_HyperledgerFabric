# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Cleans up the server & client folders

killall fabric-ca-server  2> /dev/null

# Remove all server artefacts
rm -rf ../server/*  2> /dev/null
# Remove all identity MSP
rm -rf ../client/*   2> /dev/null

echo "Killed the Fabric CA Server & Removed the identities!!!"