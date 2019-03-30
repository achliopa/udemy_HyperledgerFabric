Copyright 2018 @ http://ACloudFan.com 
Part of a online course. Please check it out at http://www.acloudfan.com

Change Log
==========

- HLF-Workbench-v1.4-01       Jan 27th, 2019
  
  * All binaries & images will be using v1.4
  * Changes have been made in the shell script
  * Changes made in the configurations


- HLF-Workbench-v1.3-02       Nov 10th, 2018
  * Setup bnaries modified to update the binary permissions
  * Changed the way go lang is getting installed
- HLF-Workbench-v1.3-1        Nov 1st


Upgrade Instructions (to v1.4)
==============================
 1. Shutdown the VM with v1.3.x setup
     vagrant   halt
  2. Download the latest version : HLF-Workbench-v1.4-0x.zip
  3. Unzip the file
     * Windows:    Right click on file in File-Explorer select "Extract All..."
     * Mac/Ubuntu: unzip -P <<PASSWORD>>  File-Name...zip  
     PS: Doubleclick sometimes doesn't work !!!
  4. Open the project in Visual Studio Code
  5. Follow the instructions in Lecture#10 to setup the environment
     * You have to install all components as its a new version
  6. Validate the workbench using the instructions in Lecture#10 & #11

  7. DO NOT Delete the v1.3 Project or VM
     * v1.4 setup is still under testing 
     * Retain it for sometime and then delete it once you are convinced
       that v1.4 is working for you


Setup Fabric v1.3 Infrastructure
================================
1. Initialize the Fabric CA Server
    - init-fabric-ca.sh
2. Register & Enroll the identities
    - gen-identities.sh



Setup Fabric v1.2 Infrastructure on Cloud
=========================================

1. Copy the bins to VM
2. Copy the setup/*.sh to VM
3. Install docker
   - Execute sudo docker.sh
   - Logout and Log back in
4. Setup the binaries
   - Execute install-bins.sh
5. Generate the crypto
   - Execute gen-crypto.sh
6. Generate the network config files
   - Execute gen-config.sh
7. Launch the Orderer
   - Execute launch-orderer.sh
8. Create the airline channel
    - . set-peer-env.sh acme
    - Execute the create-channel.sh
9. Launch acme peer & join the channel
    - . set-peer-env.sh acme
    - ./launch-peer.sh  acme
    - ./join-channel.sh
10. Launch acme peer & join the channel
    - . set-peer-env.sh acme
    - ./launch-peer.sh  budget
    - ./join-channel.sh

11. Testing the setup
    - . set-peer-env.sh acme
    - ./chain-test.sh install
    - ./chain-test.sh instantiate
    - ./chain-test.sh invoke
    - ./chain-test.sh query

    - . set-peer-env.sh budget
    - ./chain-test.sh install
    - ./chain-test.sh query




Mini course that will help you get your Business Network Application Deployed in a multi-org Hyperledger Fabric Setup

# VBOX Mount issue
sudo service vboxadd-service stop
sudo date -s "2010-10-01 10:25:00"