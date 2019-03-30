# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Launches the CA server
export FABRIC_CA_SERVER_HOME=$PWD/fabric-ca/server

# fabric-ca-server start -n ca.server.com  --cfg.identities.allowremove

fabric-ca-server start -n ca.server.com

