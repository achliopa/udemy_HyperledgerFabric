# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# EDIT THIS To Control the Peer Setup
export ORDERER_ADDRESS=52.200.206.97:7050

export FABRIC_LOGGING_SPEC=info

export CORE_PEER_LOCALMSPID=<<CHANGE THIS>>

export CORE_PEER_ID=acme-peer1

# Admin identity used for commands
export CORE_PEER_MSPCONFIGPATH=./fabric-ca/client/acme/admin/msp