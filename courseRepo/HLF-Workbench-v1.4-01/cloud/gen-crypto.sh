# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# This will generate tha tar files with crypto material
# Crypto material is picked up from fabric-ca/client folder


function    usage {
    echo    "./gen-crypto   ORG_NAME     [IDENTITY]"
    echo    "Creates tar files with the crypto"
    echo    "If identity not provided then it generates one tar for the org"
}


if [ ! -z $1 ]; then
    ORG_NAME=$1
else
    echo "Please provide ORG_NAME  [IDENTITY]"
    usage
    exit 0
fi

MSP_TAR_FOLDER=$PWD/artefacts
FABRIC_CA_CLIENT_HOME=$PWD/../fabric-ca/client

# If identity in $2 NOT provided then 
# Generate the org tar and return
if [ -z $2 ]; then
    TAR_NAME="$ORG_NAME-msp.tar"
    TAR_SOURCE=$FABRIC_CA_CLIENT_HOME/$ORG_NAME
else
    IDENTITY=$2
    TAR_NAME="$ORG_NAME-$IDENTITY-msp.tar"
    TAR_SOURCE=$FABRIC_CA_CLIENT_HOME/$ORG_NAME/$IDENTITY
fi

echo -n "Generating tar for $ORG_NAME "
echo $IDENTITY

# Check if identity exist
if [ ! -e $TAR_SOURCE ]; then
    echo "The identity $IDENTITY does not exist under $ORG_NAME !!!"
    exit 0
fi

tar -c $TAR_SOURCE -f $MSP_TAR_FOLDER/$TAR_NAME 2> /dev/null

echo  "Successfully generated the file : artefacts/$TAR_NAME"
