# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Registers the 3 Org admins for ACME Case Study
# CA Registrar is already registered & enrolled
# acme-admin, budget-admin, orderer-admin
# Change this script to add more organizations

# Registers the admins
function registerAdmins {
    # 1. Set the CA Server Admin as FABRIC_CA_CLIENT_HOME
    #    This the Registrar identity
    source set-client-home.sh   caserver   admin

    # 2. Register orderer-admin
    echo "Registering: orderer-admin"
    ATTRIBUTES='"hf.Registrar.Roles=orderer,user,client"'
    fabric-ca-client register --id.type client --id.name orderer-admin --id.secret pw --id.affiliation orderer --id.attrs $ATTRIBUTES
    
    # 3. Register acme-admin
    echo "Registering: acme-admin"
    ATTRIBUTES='"hf.Registrar.Roles=peer,user,client","hf.AffiliationMgr=true","hf.Revoker=true"'
    fabric-ca-client register --id.type client --id.name acme-admin --id.secret pw --id.affiliation acme --id.attrs $ATTRIBUTES

    # 4. Register budget-admin
    echo "Registering: budget-admin"
    ATTRIBUTES='"hf.Registrar.Roles=peer,user,client","hf.AffiliationMgr=true","hf.Revoker=true"'
    fabric-ca-client register --id.type client --id.name budget-admin --id.secret pw --id.affiliation budget --id.attrs $ATTRIBUTES
    
    ### Additional Organizations may be added here ###
}

# Setup MSP
function setupMSP {
    mkdir -p $FABRIC_CA_CLIENT_HOME/msp/admincerts

    echo "====> $FABRIC_CA_CLIENT_HOME/msp/admincerts"
    cp $FABRIC_CA_CLIENT_HOME/../../caserver/admin/msp/signcerts/*  $FABRIC_CA_CLIENT_HOME/msp/admincerts
}

# Enroll admin
function enrollAdmins {

    # 1. orderer-admin
    echo "Enrolling: orderer-admin"

    export ORG_NAME="orderer"
    source set-client-home.sh   $ORG_NAME   admin
    # Enroll the admin identity
    fabric-ca-client enroll -u http://orderer-admin:pw@localhost:7054
    # Setup the MSP for the orderer
    setupMSP


    # 2. acme-admin
    echo "Enrolling: acme-admin"

    export ORG_NAME="acme"
    source set-client-home.sh   $ORG_NAME   admin
    # Enroll the admin identity
    fabric-ca-client enroll -u http://acme-admin:pw@localhost:7054
    # Setup the MSP for acme
    setupMSP

    # 3. budget-admin
    echo "Enrolling: budget-admin"

    export ORG_NAME="budget"
    source set-client-home.sh   $ORG_NAME   admin
    # Enroll the admin identity
    fabric-ca-client enroll -u http://budget-admin:pw@localhost:7054
    # Setup the MSP for budget
    setupMSP

    ### Additional Organizations may be added here ###

}

echo "========= Registering ==============="
#1. CA Registrar will register the Org Admins
registerAdmins

echo "========= Enrolling ==============="
#2. Each Org Admin will then enroll & get the certs
enrollAdmins

echo "==================================="