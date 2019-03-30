# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Used for generation of he genesis block and the airline channel tx file
export FABRIC_CFG_PATH=../../config

# Genesis block generation
configtxgen -profile AirlineOrdererGenesis -outputBlock ../../artefacts/airline-genesis.block -channelID ordererchannel

# Airline channel creation
configtxgen -profile AirlineChannel -outputCreateChannelTx ../../artefacts/airline-channel.tx -channelID airlinechannel

