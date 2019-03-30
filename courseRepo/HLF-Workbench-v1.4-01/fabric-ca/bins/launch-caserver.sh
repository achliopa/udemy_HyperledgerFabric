# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Launches the CA server
export FABRIC_CA_SERVER_HOME=$PWD/../server

fabric-ca-server -n ca.server.com start

