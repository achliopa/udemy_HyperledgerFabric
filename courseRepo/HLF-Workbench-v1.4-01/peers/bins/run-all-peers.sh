# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Gives a clean start to 3 peers
# Execute orderer/bins/clean-launch-orderer.sh before this script

# Clean peers
echo "++++++ Cleaning the previous run"
./clean.sh

# As Acme admin create the channel by submitting the transaction
echo "+++++ Creating the application channel = airlinechannel"
. set-env.sh  acme  7050   admin
./create-channel.sh

# Give some time for the transaction to go through
echo "++++ Sleeping for 3 seconds"
sleep 3s

# Launch the acme-peer1
echo "+++ acme-peer1 Launching & Joining airlinechannel - will sleep for 3 seconds"
. set-env.sh  acme  7050   admin
./launch-peer.sh acme  7050   acme-peer1
sleep 3s
./join-channel.sh

# Launch the acme-peer2
echo "++ acme-peer2 Launching & Joining airlinechannel - will sleep for 3 seconds"
. set-env.sh  acme  8050   admin
./launch-peer.sh acme  8050   acme-peer2
sleep 3s
./join-channel.sh

# Launch the budget-peer1
echo "+ budget-peer1 Launching & Joining airlinechannel - will sleep for 3 seconds"
. set-env.sh  budget  9050   admin
./launch-peer.sh budget  9050   budget-peer1
sleep 3s
./join-channel.sh

echo "Done. All 3 peers launched in background. Please check peer logs at /peers"
