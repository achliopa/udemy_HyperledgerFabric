# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

source ./set-env.sh

export AIRLINE_CHANNEL_BLOCK_0=./airlinechannel_0.block

#1 Fetch the genesis for the channel - this leads to creation of
# file airlinechannel_0.block
peer channel fetch 0  -o $ORDERER_ADDRESS -c airlinechannel

#2 Join the channel
peer channel join -b $AIRLINE_CHANNEL_BLOCK_0 -o $ORDERER_ADDRESS