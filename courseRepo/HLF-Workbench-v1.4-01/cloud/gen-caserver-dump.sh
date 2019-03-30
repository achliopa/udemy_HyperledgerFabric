# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Creates a full dump of the local CA server setup
MSP_TAR_FOLDER=$PWD/artefacts
FABRIC_CA_SERVER_HOME=$PWD/../fabric-ca/server
FABRIC_CA_CLIENT_HOME=$PWD/../fabric-ca/client

CASERVER_DUMP_FILE="caserver-dump.tar"

# Generate the tar file for the Fabric CA Server
echo "Generating CA Server archive!"
tar -c $FABRIC_CA_SERVER_HOME -f $MSP_TAR_FOLDER/$CASERVER_DUMP_FILE 2> /dev/null