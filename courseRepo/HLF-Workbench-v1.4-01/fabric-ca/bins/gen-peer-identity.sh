# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Creates/Enrolls the Peer's identity + Sets up MSP for peer
# Script needs to be executed for the peers setup
# PS: Since Register (step 1) can happen only once - ignore register error if you run script multiple times

function usage {
    echo "./gen-peer-identity.sh ORG_NAME  PEER_NAME"
    echo "     Sets up the Peer identity and MSP"
    echo "     Script will fail if CA Server is not running!!!"
}

# Check if ORG_NAME passed
if [ -z $1 ];
then
    usage
    echo "Please provide the ORG Name!!!"
    exit 0
else
    ORG_NAME=$1
fi

if [ -z $2 ];
then
    usage
    echo  "Please specify PEER_NAME!!!"
    exit 0
else
    PEER_NAME=$2
fi

# Identity of the peer will be created by the admin from the Respective organization org
# 1. Set the Identity context to Orderer Admin
source set-client-home.sh $ORG_NAME  admin

# 2.  Register the identity
#     Type of identity being registered is 'peer'
fabric-ca-client register --id.type peer --id.name $PEER_NAME --id.secret pw --id.affiliation $ORG_NAME 
echo "======Completed: Step 1 : Registered peer (can be done only once)===="

# 3. Hold the admin MSP localtion in a variable
ADMIN_CLIENT_HOME=$FABRIC_CA_CLIENT_HOME

# 4. Change the client context to orderer identity
source set-client-home.sh $ORG_NAME  $PEER_NAME

# 5. Orderer identity is enrolled
# Admin will  enroll the peer identity. The MSP will be written in the 
# FABRIC_CA_CLIENT_HOME

fabric-ca-client enroll -u http://$PEER_NAME:pw@localhost:7054

echo "======Completed: Step 3 : Enrolled $PEER_NAME ========"

# 6. Copy the admincerts to the appropriate folder
mkdir -p $FABRIC_CA_CLIENT_HOME/msp/admincerts
cp $ADMIN_CLIENT_HOME/msp/signcerts/*    $FABRIC_CA_CLIENT_HOME/msp/admincerts

echo "======Completed: Step 4 : MSP setup for the peer========"

echo "======Peer identity setup with Enrollment ID=$PEER_NAME"

