# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# This will create the airline channel
#  No arguments needed if created the default airline channel in the project
function usage {
    echo "create-channel.sh   [ORDERER_ADDRESS default=7050] [CHANNEL_NAME default=airlinechannel] [CHANNEL_TX_FILE default=../../artefacts/airline-channel.tx]"
    echo "                    Make sure to execute . set-env.sh before calling this scripy"
}

# Defaults for the channel name and tx file path
CHANNEL_NAME=airlinechannel
CHANNEL_TX_FILE=../../artefacts/airline-channel.tx 

# Org name Must be provided
if [ -z $1 ];
then
    usage
    ORDERER_ADDRESS="localhost:7050"
else
    ORDERER_ADDRESS=$1
fi

# If Channel is provided then the path to Channel TX file MUST be provided
if [ $2 ];
then 
    CHANNEL_NAME=$2
    if [ -z $3 ];
    then 
        echo "Please provide the path to 'create channel tx' !!!"
        exit 0
    else
        CHANNEL_TX_FILE=$3
    fi  
fi

echo "Using ORDERER_ADDRESS=$ORDERER_ADDRESS"

# Execute the peer channel create command
peer channel create -o $ORDERER_ADDRESS -c $CHANNEL_NAME -f $CHANNEL_TX_FILE --outputBlock ../$CHANNEL_NAME-genesis.block
