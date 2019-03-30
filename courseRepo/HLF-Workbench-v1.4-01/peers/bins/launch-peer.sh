
# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Launches the peer for the specified organization & port
# The identity for the named peer should have been created before this script is executed

function usage {
    echo "./launch-peer.sh   ORG_NAME  [PORT_NUMBER_BASE default=7050]   [PEER_NAME default=acme-peer1]"
    echo "                   Sets the environment variables for the peer & then launches it"
}

# Org name Must be provided
if [ -z $1 ];
then
    usage
    echo "Please provide the ORG Name!!!"
    exit 0
else
    ORG_NAME=$1
fi

# Port number base
if [ -z $2 ]
then
    PORT_NUMBER_BASE=7050  
else
    PORT_NUMBER_BASE=$2
fi

# Peer name 
if [ -z $3 ];
then
    PEER_NAME=acme-peer1
    echo "Using the default PEER_NAME=$PEER_NAME"
else 
    PEER_NAME=$3
fi


#1. Set up the environment variables
#   The identity context is switched to the peer's identity
source set-env.sh   $ORG_NAME  $PORT_NUMBER_BASE   $PEER_NAME

#2. Set the Peer File System Path for writing the ledger
export CORE_PEER_FILESYSTEMPATH="$HOME/peers/$PEER_NAME/ledger" 

#3. Create the ledger folders
mkdir -p $CORE_PEER_FILESYSTEMPATH


#4. Core peer
export CORE_PEER_ID=$PEER_NAME

#5. Start the peer
#   Name of the peer log file
PEER_LOGS="../$PEER_NAME.log"
peer node start 2> $PEER_LOGS &

echo "====>PLEASE Check Peer Log under  $PEER_LOGS"
echo "====>Make sure there are no errors!!!"