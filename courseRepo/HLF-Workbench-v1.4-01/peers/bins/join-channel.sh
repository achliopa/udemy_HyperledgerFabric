
# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Fetches the genesis block for the channel and then joins it

function usage {
    echo "join-channel.sh   [ORDERER_ADDRESS default=7050] [CHANNEL_NAME default=airlinechannel]"
    echo "                    Make sure to execute . set-env.sh before calling this scripy"
}

# Set the Orderer Address
if [ -z $1 ];
then
    usage
    ORDERER_ADDRESS="localhost:7050"
else
    ORDERER_ADDRESS=$1
fi

if [ -z $1 ];
then
    CHANNEL_NAME=airlinechannel
else
    CHANNEL_NAME=$2
fi


GENESIS_BLOCK=airline-channel.block

echo "Using ORDERER_ADDRESS=$ORDERER_ADDRESS"

#1. Fetch the genesis for the channel
peer channel fetch config $GENESIS_BLOCK -o $ORDERER_ADDRESS -c $CHANNEL_NAME

#2. Join the channel
peer channel join -o $ORDERER_ADDRESS -b $GENESIS_BLOCK

rm $GENESIS_BLOCK 2> /dev/null