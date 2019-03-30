Orderer Scripts
===============
1. Generate the configuration artefacts
    > ./gen-config.sh
    Generates the genesis block for ordererchannel >>           artefacts/airline-genesis.block
    Generates the airline channel transaction file >>           artefacts/airline-channel.tx   
2. Setup the orderer identity
    Execute the script under fabric-ca/bins to generate the orderer identity
    > ./gen-orderer-identity.sh
3. Launch the orderer
    > ./launch-orderer.sh &
    Launches the orderer process
    Logs are written to orderer/orderer.log


To cleanup the Orderer 
======================
    > ./clean.sh
    Deletes the files from under artefacts folder
    This will kill the running orderer process instance
    Cleanup  the orderer ledger from the loacl folder