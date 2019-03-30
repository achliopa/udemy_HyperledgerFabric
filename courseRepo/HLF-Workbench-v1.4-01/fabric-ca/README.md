Fabric CA Tasks
===============
1. init-fabric-ca.sh
    Initializes the Fabric CA server.
    > ./init-fabric-ca.sh
    Need to be carried out once.
    If executed after the configuration of the network - will lead to an invalid network
2. launch-caserver.sh
    Starts the CA Server process
    > ./launch-ca-server.sh &
    CA Client may be used for interacting with it
3. gen-admin-identities.sh
    Generates the admin identities for the specified identities
    > ./gen-admin.identities.sh
4. create-org-msp.sh
    Creates the Org MSPs
    > ./create-org-msp.sh

# Steps to  be carried out later
5. gen-orderer-identity.sh
    Generates the Orderer identity
    * Script used in the Lectures on Orderer

6. gen-peer-identity.sh acme devpeer
    Generates the Peer Identity
    * Script used in the Lectures on Peer