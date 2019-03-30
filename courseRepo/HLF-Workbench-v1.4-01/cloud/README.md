Crypto Setup
============
1. Setup the identities locally
2. This will lead to the creaton of the crypto under 
    - fabric-ca/server
    - fabric-ca/client
3. Run the utility to generate the MSP tar files

Fabric Setup
============
1. FTP the caserver-archive.tar
    > tar xvf caserver-archive.tar
2. Copy the fabric-ca binaries
    > chmod 755 fabric-ca-client
    > chmod 755 fabric-ca-server
    > sudo mv fabric-ca-client  /usr/local/bin
    > sudo mv fabric-ca-server  /usr/local/bin
3. Copy the msp-caserver-admin.tar 
    > tar xvf msp-caserver-admin.tar
4. FTP the CA Server Shell Scripts
    > launch-caserver.sh
5. Launch CA Server
    > chmod 755 launch-caserver.sh

Fabric Client
=============
The fabric-ca-client on local VM may be used for managing the identities on the Cloud/VM

1. Update the IP address in the CA_IP in the file cloud/env.sh
2. Setup the evironment for connecting to fabric by 
    > . env.sh
3. Change directory to fabric-ca/bins
    > . set-client.sh  caserver  admin     [Switch Identity context]
    Run the fabric-ca-client commands with flag -u $CA_URL  or using the $CA_IP
    E.g.,
        > fabric-ca-client identity list -u $CA_URL
        > fabric-ca-client enroll -u http://Entrol-ID:Enroll-Secret@$CA_IP:7054

VM IP Address
===============
1. Update the env.sh

Nw Configuration 
================
1. Update the configtx.yaml with the IP addresses
    -Acme Peer Host 
    -Budget Peer Host
    -Orderer Host
2. Generate the network config
    Execute under the cloud folder
    > ./gen-nw-config.sh
    This will generate the artefacts under the cloud/artefacts folder

Orderer Setup
=============
1. Set up the MSP for the orderer
    - FTP the crypto/msp-orderer-orderer.tar to Cloud/VM
    > tar xvf msp-orderer-orderer.tar
2. FTP the Orderer binary to Orderer Cloud/VM
    > chmod 755 orderer
    > sudo mv orderer /usr/local/bin
3. FTP the genesis block file to the Orderer Cloud/VM
4. FTP the files from cloud/bins/orderer to Cloud/VM
    > chmod 755 *.sh
    > ./launch-orderer.sh

Peer & Channel Setup
=============
1. Setup the peer binary 
    > chmod 755 peer
    > sudo mv peer /usr/local/bin
2. FTP the files from cloud/bins/peer to Cloud/VM
    Setup docker
    > sudo ./docker.sh
    Log out and Log back in
3. FTP the MSP for the org admin
    > tar xvf msp-acme-admin.tar
4. Update the set-env.sh
5. Create the airline channel (only once)
    > ./create-airline-channel.sh
6. FTP the msp for the peer
    > tar xvf msp-acme-acme-peer1.tar
7. Launch the peer
    > Update the launch script
    > ./launch-peer.sh
8. Join the channel
    > ./join-airline-channel.sh

Test Peer
=========




Composer Cloud Test
===================

Set up the composer app on budget & start
composer network install -a .\test-bna.bna -c  Acme-peer1PeerAdmin@hlfv1
composer network start -c  Budget-peer1PeerAdmin@hlfv1 -A admin -S pw -n test-bna -V 0.0.1
composer card import -f admin@test-bna.card

Setup the composer app on acme
composer network install -a .\test-bna.bna -c  Acme-peer1PeerAdmin@hlfv1

Replicate the network card



Launch the REST server
