#!/bin/bash
# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Sets the Identity & Peer context

function usage {
    echo ". set-env.sh   ORG_NAME  [PORT_NUMBER_BASE default=7050]   [IDENTITY default=admin]"
    echo "               Sets the environment variables for the peer"
    echo "               To set  the context to ORG Admin > . set-env.sh  acme   > . set-env.sh  budget 8050 "
}

# Change this to appropriate level
export FABRIC_LOGGING_SPEC=info  #debug  #info #warning

echo "Current Identity Context: $CURRENT_ORG_NAME     $CURRENT_IDENTITY"

if [ -z $3 ];
then
    IDENTITY=admin
else
    IDENTITY=$3
fi

if [ -z $1 ];
then
    usage
    echo "Please provide the ORG Name!!!"
    return
else
    ORG_NAME=$1
    echo -e "Switching IDENTITY Context to Org = $ORG_NAME  $IDENTITY"
fi

PORT_NUMBER_BASE=7050
if [ -z $2 ]
then
    echo "Setting PORT_NUMBER_BASE=7050"   
else
    PORT_NUMBER_BASE=$2
    echo "Setting PORT_NUMBER_BASE=$2"
fi

# Create the path to the crypto config folder
CRYPTO_CONFIG_ROOT_FOLDER="$PWD/../../fabric-ca/client"

#1. Set the MSPCONFIGPATH = for peer command identity context
export CORE_PEER_MSPCONFIGPATH=$CRYPTO_CONFIG_ROOT_FOLDER/$ORG_NAME/$IDENTITY/msp

#2. Sets the MSP ID
# Capitalize the first letter of Org name e.g., acme => Acme  budget => Budget
MSP_ID="$(tr '[:lower:]' '[:upper:]' <<< ${ORG_NAME:0:1})${ORG_NAME:1}"
export CORE_PEER_LOCALMSPID=$MSP_ID"MSP"

#PS: This is to avoid Port Number contention on a single VM
# In a multi VM setup you may use 7050 as the base port for all VM
#3. Set the Peer Listener ports
VAR=$((PORT_NUMBER_BASE+1))
export CORE_PEER_LISTENADDRESS=0.0.0.0:$VAR
export CORE_PEER_ADDRESS=0.0.0.0:$VAR
VAR=$((PORT_NUMBER_BASE+2))
export CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:$VAR
VAR=$((PORT_NUMBER_BASE+3))
export CORE_PEER_EVENTS_ADDRESS=0.0.0.0:$VAR

# core.yaml file is in peers folder
#4. This is needed for the peer binary commands
export FABRIC_CFG_PATH="$PWD/.."

#5. Set variables for chaincode
export GOPATH="$PWD/../../gopath"
export NODECHAINCODE="$PWD/../../nodechaincode"
export CURRENT_ORG_NAME=$ORG_NAME
export CURRENT_IDENTITY=$IDENTITY

# All Peers will connect to this peer as bootstrap peer
# Otherwise
#export CORE_PEER_GOSSIP_BOOTSTRAP=localhost:7051

# Simply checks if this script was executed directly on the terminal/shell
# it has the '.'
if [[ $0 = *"set-env.sh" ]]
then
    echo "Did you use the . before ./set-env.sh? If yes then we are good :)"
fi
