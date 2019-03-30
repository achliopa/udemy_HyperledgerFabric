Pre-work
========
Install the composer tools before proceeding

Project setup Instructions
==========================
1. Create the test project
   > cd composer/test
   > yo hyperledger-composer
        - Select "Business Network Application"
        - Business network name = test-bna
        - Generate empty template?   No
2. Setup the test project
    > cd test-bna
    > npm install
3. Create the archive
    > cd dist
    > composer archive create  --sourceType dir --sourceName ../
    
    This will generate the archive file :  test-bna@0.0.1
    We will use this archive for testing

Cards Setup
===========
1. Make sure Fabric environment is up (Multi or Single)
2. Launch the utility and generate the cards
    > cd composer/util
    > node card-ops.js
    Select "Generate Peer Admin Cards for Single | Multi Org Profile"
3. Install the Peer Admin Cards
    > node card-ops.js
    Select "Install/Replace Cards"

Installing non Peer Admin Cards
===============================
Two ways to do it.
1. Use the 'composer card import ...'command
2. Use the card-ops.js
    - Copy the card file(s) to comopser/cards folder
    > node card-ops.js
    Select "Install/Replace Cards"


Setup Test project
==================
> yo hyperledger-composer
In the project root folder
> npm install

Installing the composer app
===========================
1. Execute the composer install command
    - Install & Start as the Acme-Peer1 Peeradmin
    Switch folder to composer/test/test-bna/dist
    > composer network install -a ./test-bna@0.0.1.bna -c Acme-peer1PeerAdmin@hlfv1
    > composer network start -n test-bna -c Acme-peer1PeerAdmin@hlfv1 -V 0.0.1 -A acme-admin -S pw

    Rename the generated card file acme-admin@test-bna.card    acme-admin-peer1@test-bna.card
    > mv acme-admin@test-bna.card    peer1-acme-admin@test-bna.card

    - Repeat the steps for the Acme-Peer2 
    > composer network install -a ./test-bna@0.0.1.bna -c Acme-peer2PeerAdmin@hlfv1
    > composer network start -n test-bna -c Acme-peer1PeerAdmin@hlfv1 -V 0.0.1 -A acme-admin -S pw

    > mv acme-admin@test-bna.card    acme-admin-peer2@test-bna.card

    - Repeat the steps for the Budget-Peer1
    > composer network install -a ./test-bna@0.0.1.bna -c Acme-peer2PeerAdmin@hlfv1
    > composer network start -n test-bna -c Acme-peer1PeerAdmin@hlfv1 -V 0.0.1 -A acme-admin -S pw

    > mv budget-admin@test-bna.card    budget-admin-peer1@test-bna.card

2. Import the card for the admin@test-bna
    > composer   card	import –f peer1-acme-admin@test-bna.card

3. Run the composer REST-Server & Test
    > composer-rest-server -c peer1-acme-admin@test-bna.card -n never

composer card delete -c AcmeAdmin@hlfv1
composer card import -f test.card

composer archive create  --sourceType dir --sourceName ../
composer network install -a ./test-bna4@0.0.1.bna -c Acme-peer2PeerAdmin@hlfv1
composer network start -n test-bna4 -c Acme-peer2PeerAdmin@hlfv1 -V 0.0.1 -A acme-admin -S pw -l DEBUG
composer-rest-server -c acme-admin@test-bna -n never

composer card import -f .\acme-admin@test-bna2.card

composer network list -c acme-admin@test-bna2

composer network ping -c admin@test-bna6

composer-rest-server -c acme-admin@test-bna4 -n never



# 
composer network install --card PeerAdmin@hlfv1 --archiveFile tutorial-network@0.0.1.bna
# 
composer network start --networkName tutorial-network --networkVersion 0.0.1 --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card





export FABRIC_CA_CLIENT_HOME=$PWD/../crypto/fabric-ca/client/admin
fabric-ca-client  enroll -u http://admin:adminpw@localhost:7054





#1 Create the BNA archive
composer archive create  --sourceType dir --sourceName ../

#2.1 Install the archive
composer network install -a ./airlinev9@0.0.1.bna -c PeerAdmin@hlfv

#2.2 Strart the network
composer network start -n airlinev9 -c PeerAdmin@hlfv1 -V 0.0.1 -A admin -S adminpw

admin>> org.hyperledger.composer.system.NetworkAdmin#admin

#3 DO NOT - Import the card
composer card delete -n admin@airlinev9
composer card import -f admin@airlinev9.card

#4 Add a new participants

- John Doe (johnd) is the Network Administrator
composer participant add -d '{"$class":"org.acme.airline.participant.ACMENetworkAdmin","participantKey":"johnd","contact":{"$class":"org.acme.airline.participant.Contact","fName":"John","lname":"Doe","email":"john.doe@acmeairline.com"}}' -c admin@airlinev9

- Will Smith (wills) works in the Logistics department
composer participant add -d '{"$class":"org.acme.airline.participant.ACMEPersonnel","participantKey":"wills","contact":{"$class":"org.acme.airline.participant.Contact","fName":"Will","lname":"Smith","email":"will.smith@acmeairline.com"}, "department":"Logistics"}' -c admin@airlinev9

#5 Issue the identities
composer identity issue -u johnd -a org.acme.airline.participant.ACMENetworkAdmin#johnd -c admin@airlinev9

composer card delete -n johnd@airlinev9
composer card import -f johnd@airlinev9.card

composer identity issue -u wills -a org.acme.airline.participant.ACMEPersonnel#wills -c admin@airlinev9 

composer card delete -n wills@airlinev9
composer card import -f wills@airlinev9.card

#6 Ping BNA using the johnd & wills cards
    - composer network ping -c johnd@airlinev9
    - composer network ping -c wills@airlinev9

#6 Setup the permissions.acl
    - johnd     Is the Network Administrator for airlinev9
                Should be able to execute network commands

    - wills     Works for the Logistics department
                Should NOT be able to execute any network command

#7 Rebuild the archive
composer archive create  --sourceType dir --sourceName ../

#8 Update the Network
composer network update -a ./airlinev9@0.0.1.bna -c admin@airlinev9


composer-rest-server -c johnd@airlinev9 -n always -w true





(a) You used cryptogen to generate your key material but did not start fabric-ca-server with the signing key
and certificate generated by cryptogen.
To resolve (assuming FABRIC_CA_SERVER_HOME is set to the home directory of your fabric-ca-server):
i. Stop fabric-ca-server.
ii. Copy crypto-config/peerOrganizations/<orgName>/ca/*pem to $FABRIC_CA_SERVER_HOME/cacert.pem.
iii. Copy crypto-config/peerOrganizations/<orgName>/ca/*_sk to $FABRIC_CA_SERVER_HOME/msp/keystore/.
iv. Start fabric-ca-server.
v. Delete any previously issued enrollment certificates and get new certificates by enrolling again.


Error Encountered
=================

after starting - imported the card and then tried

composer network ping -c admin@test-bna

Hyperledger Composer:: Error: The current identity must be activated (ACTIVATION_REQUIRED)

This led to the activation of the admin identity 
 composer identity list -c admin@test-bna

 https://stackoverflow.com/questions/46201984/hyperledger-composer-error-the-current-identity-must-be-activated-activation

