# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Creates/Enrolls the Orderer's identity + Sets up MSP for orderer
# Script may executed multiple times 
# PS: Since Register (step 1) can happen only once - ignore register error if you run multiple times

# Identity of the orderer will be created by the admin from the orderer org
# 1. Set the Identity context to Orderer Admin
source set-client-home.sh orderer admin

# 2. Register the orderer identity
AFFILIATION=orderer
fabric-ca-client register --id.type orderer --id.name orderer --id.secret pw --id.affiliation $AFFILIATION 
echo "======Completed: Registered orderer (can be done only once)===="

# 3. Hold the admin MSP localtion in a variable
ADMIN_CLIENT_HOME=$FABRIC_CA_CLIENT_HOME

# 4. Change the client context to orderer identity
source set-client-home.sh orderer orderer

# 5. Orderer identity is enrolled
# Admin will  enroll the orderer identity. The MSP will be written in the 
# FABRIC_CA_CLIENT_HOME
fabric-ca-client enroll -u http://orderer:pw@localhost:7054
echo "======Completed: Enrolled orderer ========"

# 6. Copy the admincerts to the appropriate folder
mkdir -p $FABRIC_CA_CLIENT_HOME/msp/admincerts
cp $ADMIN_CLIENT_HOME/msp/signcerts/*    $FABRIC_CA_CLIENT_HOME/msp/admincerts

echo "======Completed: MSP setup for the orderer========"





