# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

function    usage {
    echo  "Usage: ./ca-test.sh    ORG_NAME "
    echo  "Lists the identities in the ORG_NAME using the admin context"
}

source set-env.sh $1

export FABRIC_CA_CLIENT_HOME=$PWD/../fabric-ca/client/$1/admin

echo "Using FABRIC_CA_CLIENT_HOME=$FABRIC_CA_CLIENT_HOME   CA_URL=$CA_URL"

fabric-ca-client identity list -u $CA_URL