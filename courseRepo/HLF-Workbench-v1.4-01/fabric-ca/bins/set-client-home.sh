# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Sets the FABRIC_CA_CLIENT_HOME based on (a) org (b) enrollment ID

function usage {
    echo    "Usage:    .   ./setclient.sh   ORG-Name   Enrollment-ID"

    echo "FABRIC_CA_CLIENT_HOME=$FABRIC_CA_CLIENT_HOME"
}

# Sets the FABRIC_CA_CLIENT_HOME for specified Identity within an Org
function usage {
    echo ".  ./set-client-home.sh ORG_NAME  ENROLL_ID"
    echo "     Sets up FABRIC_CA_CLIENT_HOME"
}

if [ -z $1 ];
then
    usage
    echo   "Please provide ORG-Name & enrollment ID"
    exit 0
fi

if [ -z $2 ];
then
    usage
    echo   "Please provide enrollment ID"
    exit 0
fi

# Sett the client home to specified folder
export FABRIC_CA_CLIENT_HOME=$PWD/../client/$1/$2
echo "FABRIC_CA_CLIENT_HOME=$FABRIC_CA_CLIENT_HOME"

if [ "$0" = "./set-client-home.sh" ]
then
    echo "Did you use the . before ./set-client-home.sh? If yes then we are good :)"
fi

