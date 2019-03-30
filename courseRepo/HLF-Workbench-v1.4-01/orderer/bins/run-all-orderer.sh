# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Restarts orderer in background in clean state

echo "+++Cleaning the previous run"
./clean.sh

echo "++Generating the network configuration"
./gen-config.sh

echo "+Launching orderer in the background"
./launch-orderer.sh &

echo "Done. Orderer started in a clean state. Check logs at orderer/orderer.log"