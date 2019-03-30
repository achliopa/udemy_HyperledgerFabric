# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Dumps the Peer config
echo "Current Identity Context:  $CURRENT_ORG_NAME   $CURRENT_IDENTITY"
echo "========================="
env | grep CORE_PEER
echo "FABRIC_CFG_PATH=$FABRIC_CFG_PATH"
echo "Fabric Processes"
echo "================"
ps -eal | grep peer
ps -eal | grep orderer
ps -eal | grep fabric-ca