# Udemy Course #1: Blockchain Development on Hyperledger Fabric using Composer

* [Course #1 Link](https://www.udemy.com/hyperledger/)
* [Course #1 Repo1](https://github.com/acloudfan/HLF-Vagrant-Dev-Setup)
* [Course #1 Repo2](https://github.com/acloudfan/HLF-Course-Domain-Model)
* [Course #1 Repo3](https://github.com/acloudfan/HLF-Fabric-API)

# Udemy Course #2: Tutorial: Set up Multi Org Hyperledger Fabric Network

* [Course #2 Link](https://www.udemy.com/tutorial-hyperledger-setup/)
* [Course # 2 Repo](http://www.acloudfan.com/download-files)

# Course 1 - Blockchain Development on Hyperledger Fabric using Composer

**NOTE:** HL Composer v0.19 with HL Fabric v1.1 , HL Composer v0.20 with HL Fabric v1.2

## Section 1 - Introduction

### Lecture 3 - What is Hyperleder?

* Hyperledger is an umbrella  project of various tools and frameworks that have to do with business blockchains. it is an Incubator of BC Technologies
* More details on the edX course notes
* Hyperledger DLT (Distributed Ledger Technologies) Frameworks
	* Hyperledger Sawtooth (intel)
	* Hyperledger Iroha (soramitsu)
	* Hyperledger Fabric (IBM)
	* Hyperledger Burrow (Monacs)
* Hyperldeger Tools
	* Hyperledger Cello
	* Hyperledger Composer
	* hyperldeger Explorer
	* hyperledger Quilt
* This course focuses on Fabric and Composer
* We can [Join](https://www.hyperledger.org/community) Hyperledger Community
* 159 engs of 28 companies work on hyperledger fabric
* it reached 1.0 on july 2017
* Hyperledger Fabric: Productionb ready BC Framework for Business Blockchain applications
* It offers:
	* A set of infrasturcture & application building blocks
	* Practices & Guidelines for crating BC apps
* Hyperledger COmposer is a Tools for creating business applications on Hyperledger DLT Frameworks

### Lecture 4 - Distributed Ledger Technology & its Challenges

* Fabric allows the creation of a decentralized systme for the exchange of value
* In hyperledger an Asset represents value (tangible or not)
* all asset exchange transactions are recorded in a distributed ledger. each participant has its copy
* an example is recording car parts source
* some industries need a complete record of all asset components back to the source. aircraft manuf industry anbd food industry (track faulty part source or contaminated food source)
* In DLT each entity involved in exchange of value keeps a replica of the ledger
* DLTs face some challenges:
	* maintain consistency
	* privacy (participants not visible to public but may decide to disclose idenity)
	* confidentiality (information exchanged by the parties is visible only to authorized parties)
	* standarization
	* interoperability
	* scalability
* Fabric addresses most of the challenges

## Section 2- Hyperledger Fabric & Composer Concepts

### Lecture 5 Hyperledger Fabric : A DLT for Business Applications

* Fabric is:
	* a DLT for busines. 
	* A permissioned BC NW
	* supports confidential tranactions
	* no cryptocurrency is used
	* programmable w/ smart contracts
* Permissioned NW:  
	* restricts access and allowed actions on the network
	* participants must authenticate to some authority that gives permissions
	* RBAC (role based access control)
	* transactions are validated by transaction validators that participants trust (subset of participants)
* Confidential Transactions:
	* participants control visibility of transactions
	* partipants can establish private channels to restrict visibility of transactions
* No cryptocurrency needed:
	* in ethereum cryptocurrency is used to give incentive to participants to validata transactions
	* in fabric there is no such need.
	* participants decide who and how validates
* Programmable:
	* using Chaincode AKA smart-contract
	* chaicode automates business process
	* build trust4

### Lecture 6 - Assets, Chaincode and Ledger

* Asset:
	* represents an object of value
	* JSON or Binary data format
* Transactions:
	* Change on Asset's state
* Chaincode (Smart COntract):
	* Defines the assets structure
	* Defines transactons (Business Logic) e.g `Function sellTheCar(newOwner)`
* Lenger:
	* tracks all asset transactions
	* records asset state changes
	* is distributed (DLT)

### Lecture 7 - Permissioned Network, Members & Membership Service Provider

* Fabric is a Permissioned Network
	* Participants need identities assigned
	* Identities are managed by Membership Service Provider
* In Real World Businesses interact with known entities (B2B or even identified clients e.g business)
* Fabric uses RBAC (Role Based Access Control) managed by MSP
* A Member in a fabric network is a legally separated entity (e.g Car Manufacturer, Car Dealer, Repair Shop)
* Identities in Fabric is managed through X509 certificates
* When a participant identity is created a certificate is issed to the particiapnt
* certiciates are used to sign the transactions
* infrastructure components in fabric also are assigned certificates (security)
* members also are assigned certificates
* Members can manage (create revoke) identities in their organization (paricipants and infrastructure)
* Hyperledger Fabric can have 1 or more MSPs

### Lecture 8 - Nodes & Channels

* Nodes:
	* connect to other nodes (mesh) to form the BC network
	* In ethereum and bitcoin all nodes are equal
	* are the comunication entities of the BC
	* they use X509 certs to identify.
	* identified users use client apps to connect to the network through nodes
	* they sign transactions. txns signed by an bad cert is rejected
	* In Fabric all nodes are NOT equal
		* Peer Nodes keep ledger data in synch across network
		* Client Nodes Initiate transactions
		* Orderers are responsible for distribution of transactions
* Members can participate in multiple HL BC Networks as transactions in each network are isolated
* This is possible with private Channels:
	* peers connect to the channel
	* each channel has its independent ledger
	* each channel has its own chaincode
	peers can connect to multiple channels

### Lecture 9 - Hyperledger Fabric Composer Overview

* HyperLedger Composer:
	* Hyperledger Open Development Toolset
	* It makes easy to Create and Manage Business Network Applications
	* It aims in accelarating the development o Blockchain apps on Hyperledger
	* it can be used for business modeling
	* it hides underlying complexity
	* chaincode is written in JS
* There are Composer Tools for:
	* Dev/Architects
	* Operations
	* Administrators
	* Business Analysts
* Development Process with Composer
	* BA creates the Business Network Model using modeling lang
	* Dev/Architect takes the Business Model and creates the chaincode in JS creating the Business Network APplication
	* Admin uses the Business Model App to Exec Runtimes using the Composer Tool on Fabric v1.x
	* Operator uses tools to monitor the health of the network
* Playgound Tool is used by BA and Devs and is webbased. BC NW is stored in browser
* It is used for: 
	* Model Development
	* Simulated Testing
* Embedded Env:
	* Devs can use the Bus Nw App and deploy it in a nodejs embhedded simulator
	* It enables TDD and Unit testing

### Section 3 - Pre-Requisites for Fabric development

### Lecture 11 - Development Machine Specifications & IDE

* Machine Config
	* more than 4GB RAM
	* Mac OS 10.12
	* Ubuntu Linux 16.04 LTS
* Visual Studio Code for editor
* using docker extention and hyperledger composer extention for visual stodio code

### Lecture 12 - Composer Dev Tools Installation

* We will install Composer tools: CLI, Yo Generator, REST Server
* For ubuntu follow the [link](https://hyperledger.github.io/composer/latest/installing/installing-prereqs.html#ubuntu)
* we need node v8.x
* we need git v2.9 or higher
* we need python 2.7.x and add Python to PATH (we have conda python v3.6.4 so use `conda search python` to see all available versions and `conda install python=2.7.16`)
* we need yeoman using node `npm install -g yo`
* we install composer cli `npm install -g composer cli` and verify with `composer -v`
* some packages might fail to install
* we need Composer REST server `npm install -g composer-rest-server` verify with `composer-rest-server -v`
* install the Yo Template for the Network App `npm install -g generator-hyperledger-composer` that creates a business network application sceleton. to verify installation use `yo --generators`
* we need the HL composer moddeling lang extention for vs code

### Lecture 14 - Install Docker or Docker Toolkit

* check installation `docker -v` v>17.3
* download docker CE stable

## Section 4 - Virtual Machine: Hyperledger Fabric Dev Environment Setup

### Lecture 16 - Native Vs. Virtual Machine Development Environment

* we can run fabric on VM or Natively
* Dependency Hell: Frustration caused by installing SW packages that have dependencies on specific versions of other SW packages
* HL Fabric has a lot of dependencies
* Native Installation:
	* Linux Users OK with it.
	* MAC so-so
	* Win bad
* Native Installation:
	* It takes time to setup (-)
	* manual installation (-)
	* version clashes (-)
	* performance (+)
* VM installation:
	* fast installation (+)
	* automated installation (+)
	* self contained / managed internally (+)
	* easy cleanup(+)

### Lecture 17 - Virtual Machine based Hyperledger Dev Setup

* avialable options Oracle Vbox or Vagrant
* Hypervisor: the Virtualization system that creates and runs VMs
* Mixed Mode Setup: Vbox + Vagrant VM
	* On VM: Fabric, Docker, curl
	* On host: composer, nodeJS vScode editor
	* Pros: Native Install Experience, No need to log to VM to use the tools
* Vagrant is a tool for building and managing VM envs in a single workflow
	* CLI tools for managing VMs
	* workflow automated by using the 'Vagrant' file
	* vagrant commands use the vagrant file and command Vbox to create the VM

### Lecture 18 - Setting up the Virtual Machine using VirtualBox+Vagrant

* any Ubuntu Linux 14.04/16.04 LTS box is OK
* Default box: bento/ubuntu-16.04
* check if vbox is installed on machine `vboxmanage --version`
* if not install it from [here](https://www.virtualbox.org/wiki/Downloads)
* check if vagrant is installed `vagrant -v`
* if not install it from [here](https://www.vagrantup.com/docs/installation/)
* clone the course vagrant repo from [github](https://github.com/acloudfan/HLF-Vagrant-Dev-Setup)
* go to where VgrantFile resides. vagrantfile specs the box to be usd , ports etc
* Typical vagrant commands as seen in [getting started](https://www.vagrantup.com/intro/getting-started/):
	* `vargant up` starts the VM
	* `vagrant halt` gracefully shut down the VM
	* `vagrant ssh` log in to VM
	* `vagrant destroy` delete the VM
* vm homedir has a scripts and workspace folder

### Lecture 20 - Installation of Fabric Tools

* Installation of Fabric is done in 3 steps:
	* Pre-Req Installation
	* Fabric Tools Installation
	* Post Install Steps
* Pre-Req Installation sets up all prereqs on VM:
	* run `vagrant up`
	* run `vagrant ssh`
	* execute pre reqs install script in VM `./scripts/install-prereqs.sh`
	* run `logout` and login again to vm
* Fabric Tools Installation installs fabric dev tools + environment
	* login to vm `vagrant ssh`
	* execute fabric tools install script `./scripts/install-fabric-tools.sh` 
	* execute `./scripts/install-composer.sh` ONLY IF we want to run composer on VM (no mixed mode setup)
	* logout `logout` and login again

### Lecture 21 - Post Installation Steps

* Download fabric docker images
	* `vagrant ssh`
	* go to `./workspace/fabric-tools`
	* give exec rights `chmod 755 *.sh`
	* in VM execute script for downloading fabric docker images `./downloadFabric.sh`
	* this mods the .profile in VM home dir
* after this all fabric images are pulled
* in Host Machine we need to install Peer Admin Card:
	* setup the utility. in vagrant repo fodler `cd util` and `npm install`
	* create the 'PeerAdmin' card `node devutil.js`
* We are now ready to use Composer tool against our Fabric Dev Environment
* we will use docker to monitor images on machine.
	* in '.profile' file set `export DOCKER_HOST=tcp://localhost:2375` to connect to Docker Deamon on VM 
	* unset `DOCKER_TLS_VERIFY` in same file
	* run `docker images` on host. we should see images on VM
* VS Code Docker extension has issues
* To start HL Fabric after shutdown 
	* `vagrant ssh` to VM 
	* run `./startFabric.sh` in VM
	* in host run `docker ps` to check status and run `docker logs --tail 100 <image name>`

## Section 5 - Native: Hyperledger Fabric Dev Environment Setup

* on VM instance in AWS EC2 Ubuntu Server 14.04 LTS or 16.04 LTS (64bit) on t2.medium machine (2cores, 4GB ram)
* tag the machine, config security group => open tcp ports SSH and TCP
* ssh on cloud VM
* DO NOT install Fabric using root. create a new user
```
sudo adduser USER-NAME
sudo adduser USER-NAME sudo
```
* validate user
```
su USER-NAME
whoami
```
* go to [HL docs](https://hyperledger.github.io/composer/latest/installing/installing-prereqs.html#ubuntu) for prereqs 
* download prereqs script
```
curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh
chmod u+x prereqs-ubuntu.sh
```
* run the script `./prereqs-ubuntu.sh`
* got to the [install the fabric dev env](https://hyperledger.github.io/composer/latest/installing/development-tools) tutorial on HL docs and follow instructions:
	* install cli tool `npm install -g composer-cli@0.20`
	* download fabric
```
mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers

curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvf fabric-dev-servers.tar.gz
```
	* install fabric (download images)
```
cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv12
./downloadFabric.sh
```
	* check images
	* start fabric `./startFabric.sh`
	* run `./createPeerAdminCard.sh`

### Lecture 27 - How to Use teh Dev Tools

* Fabric dev env uses docker. use the [cheat sheet](https://github.com/wsargent/docker-cheat-sheet)
* with vs docker extension we can run basic commands rom tool
* Composer tools we will use:
	* Composer CLI
	* Composer REST Server
	* Composer Yeoman
	* Playground
	* Composer JS

## Section 6 - Dev Environment Setup overview & Tools usage

### Lecture 28 - Development Environment Topology

* development environment is configured for 1  organization
* 4 containers are deployed as part of the dev environment
	* CA-MSP (Cert Auth Membership Ser5vice Provider) 'ca.org1.example.com'
	* Orderer 'orderer.example.com'. it is a SOLO type Orderer (only 1 for the network) . its OK only for dev purposes
	* Peer0 'peer0.org1.example.com'. only 1 peer
	* CouchDB storing state data
* 'Crypto' folder has cryptographic material (certificates and keys)
* 'Config' folder has configuration files
* 'fabric-scripts' folder has shell scripts to operate fabric
* 2 version groups of fabric are available. all complete with their scripts and composer. they get invoked by main script
* Containers config is in 'docker-compose.yml'
* containers need access to the channel config and genesis block. both are in 'ConfigTx' folder
* to create content for 'Crypto' folder a tool 'cryptogen' is used
* to create content for 'ConfigTx' folder a tool 'configtxgen' is used
* in multi org apps each ahas its own CA-MSP
* there are multiple utility scripts
	* docker compose
	* start stop
	* crypto material regeneration
	* config (channel | generis block)

### Lecture 29 - Development Environment Scripts

* scripts are usesd to start/stop the env and to preserve the state of dev env among restarts
* we interact with Fabric dev env through scripts
* with HL Composer tools we create the Business network archive files and to deploy the Nusiness network application on HL Fabric
* To launch the Dev Env:
	* we use `./startFabric.sh`
	* it kills and removes running containers
	* all deployed apps are removed
	* redeployment of apps is needed
* to shutdown the Fabric Dev Env:
	* we use `./stopFabric.sh`
	* kills and removes running containers
	* all deployed apps are removed
* if we dont have 'fabricutil.sh' in fabric-tools folder we need to cp it from repo and make it executable(chmod 755). it allows to start stop dev env without losing teh deployed app
* with the fabricUtil
	* first launch `./startFabric.sh`
	* to stop babric `./fabricUtil.sh stop`
	* to restart fabric `./fabricUtil.sh start`

## Section 7 - Fabric Under the Hood (Concepts & Terminology)

### Lecture 31 - Ledger Implementation

*  The distributed ledger contains
	* a transaction log (of all transactions)
	* state database (keeping current state of assets)
* Transaction log is Immutable (Create and Retreive)
* State data is not immutable (Create Retrieve, Updata Delete)
* Transaction and state updates are done with Chaincode
* When Chaincode is executed
	* transactions are created
	* state crud operations
* Transaction log => levelDB (embedded in the peer process). we cannot use anther DB e.g Redis
* State Data:
	* key-value pairs
	* asset state is managed with state variables (key-value-version): key is string, value is a BLOB e.g JSON
	* a new version is created on state updates.
	* so old state is not deleted. is kept in previous version of asset state
	* state dta is managed in levelDB
	* chain code owns the data. only owner chaincode can access tha state data
* levelDB: supports simple queries, executed against peer
* business needs complex queries. levelDB cannot handle that
* state DB is plugable at peer level so it can be repl;aced with couchDB

### Lecture 32 - Dev Environment Walkthrough: Peer & CouchDB setup

* peer image has peer binary installed in it
* when it starts it reads configuration from the environment
	* its configured for using levelDB for transaction data
	* its configured for using couchDB for state data
* container for couchDB has binary for couchDB + configuration
* we check the configuration file for peer and couchdb in 'fabric-scrits/hlfv1/composer/docker-compose.yml'
* peer config `peer0.org1.example.com:` env vars
	* `CORE_LEDGER_STATE_STATEDATABASE=CouchDB` sets couchDB as state db
	* `CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=couchdb:5984` sets the path to connect with db
	* `command: peer node start --peer-defaultchain=false` starts the peer container
	* `ports:` localhost port mapping
	* `volumes:` volumaping to vm fs
* commands we can run IN the peer container 
	* `chaincode` : operate a chaincode  install/instantiate/invoke/package/query/signpackage/upgrade
	* 'channel' : operate a channel create/fetch/join/list/update
	* 'logging' : log levels getlevel/setlevel/revertlevels
	* 'node' : operate a peer node  start/status
	* 'version' : print fabric peer version
* using docker extension of vscode => rclick on container => terminal => write command (e.g env to get ENV PARAMS)

### Lecture 33 - Peers Nodes : Anchors and Endorsers

* There are 2 types of peer nodes:
	* anchor peers
	* endorsing peers
* Members in the BC NW need to set up peers in their infrastructure to participate to the NW
* Peers are complete with cryptokeys and have their own ledger copy
* Peers receive transaction invokation requests from clients in the organization
* Peers synchronize their ledgers based on blocks received by the ordering service (Orderers)
* This architecture is highly scalable (no need for central scale effort)
* Each organization can scale their infra according to their needs
* Only Anchor peers in a member org receive the new blocks
* Anchor peers update other peers ledger (to avoid single point of failure they can be >1 in a cluster)
* Anchor peers are part of channel config and are discoverable
* Peers marked as endorsing peers (Endorser) receive transaction invok reqs from clients
* Endorsing Peers validate the transaction (e.g cert checks). They simulate the chaincode (execute the code but dont save state to ledger)
* Endorser either rejects the transaction or endorses it
* Endorser roleis to protect the network (intentional attack, misbehaving or misconfigured nodes)
* only endorsers need to execute the code => imporved scalability

### Lecture 34 - Clients Node: Endorsement Policies

* Client node is responsible for initiating transactions and acts on behalf of the end user
* it creates Txn request and sends it to endorsing peer(s)
* Which peer should be used as endorser? It depends on the chaincode
* Chaincode defines an Endorsment Policy:
	* which peers to be used a s endorsers
	* criteria for valid transaction
* In our sample Endorsement Policy we have 3 peers that act as endorsers (Peer-1, Peer-2, Peer-3)
* Endorsing Policy Criteria: number of endorsements needed OR % of endorsements needed
* Policy supports logical operators AND | OR `OR('Org1.member`, AND('Org2.member, 'Org3.member'))
* Association of Endorsing Policy is Optional
* Endorsing policy is specified at the time of deployment of chaincode
* If not specified the Default policy is: Any 1 Endorsing peer from default MSP/Orgazization can endorse a Tx
* Recap. to endorse / validate a transaction prior to adding it to the block
	* are all endorsement valid?
	* chack criteria: are enough endorsements?
	* are endorsemetns coming from right sources
* After validation txn is added to the Txn log as valid or rejected

### Lecture 35 - Orderer Nodes

* Orderers (aka Ordering Service):
	* provide the communication backbone for HL Fabric
	* are responsible for creating a consistent ledger state across the NW 
	* implement the consensus mechanism
	* ensure order of transactions
	* create the blocks & guarantee atomic delivery
	* are implemented on top od Message Oriented Middleware (MOM)
* For Fabric v1.0 2 MOM options are available
	* SOLO (single mode = good for development | dev mode) => single point of failure
	* Apache Kafka (multi node cluster => high throughput, scalability & fault tolerance)
* Both options support multi-channel and are asynchronous
* Flow of app:
	* client broadcasts the endorsed transaction using Orderer (invokes orderers broadcast service)
	* orderers deliver the block to the anchor peers in organizations
* Orderer provides comm layer, achieves consensus, keeps order of txn

### Lecture 36 - Membership Service Provider & Certification Authority

* MSP is:
	* an abstract component of the system that provides credentials to clients and peers for them to participate in a HL Fabric BC NW
	* an alternate implementation may be plugged in without impacting transaction flow
	* Default MSP implementation is based on PKI (Public Key Infrastructure)
	* MSP provides 2 main services: authentication & authorization
* Authentication:
	* is user/peer cert valid?
	* is peer allowed to participate?
* Authorization:
	* Can this userissue identities?
	* Can the user deploy chaincode/
* In PKI idenity management uis done through managing certificates => issue => validation => revocation. CA does this
* Certifiacation Authority:
	* is a trusted party that affirms the identity of an entity (aka cert subject) by signing the cert containing the entity's public key
	* 2 other entities needed for using certificates are Registration Authority 'RA' and Validation Authority 'VA')
* Certificate Issuance Flow:
	* user sends a cerificate signing request (he sends the apporpriate documentation to RA)
	* RA validates idenity and notifies CA to issue a certificate
	* CA signs the certificate and sends it back to requestor
	* CA informs VA about the new certificate
* from now on issed certificates are validated by VA
* CA in Fabric (issuance and management)
	* In Fabric a Root Certificate is issued to each member in network
	* Members in the network manage identities within their organizations
	* Each member has its own CA authorized to issue certs IN their organization
	* CA in fabric is implemented as Fabric-CA-Client or Fabric-CA-Server 
	* The auth admin uses the client to manage certificates on Fabric-CA-Server
	* Orderer and Peers validate certs with CA-Server
	* SDK and RestApi also interface with Server regarding certs
	* CA-Server manages identities and certs in a DB (SQLite). DB is pluggable so MySQL,PostgreSQL or LDAP are other options

### Lecture 37 - Dev Environment Walkthrough: Orderer and CA Server

* in our Fabric Dev Env we have:
* ORDERER:
	* runtime in orderer container 'orderer.example.com' reding configuration from the ENV (docker-compose.yml)
	* in its running container shell we run `orderer version` and see its version
	* we check avaliable commands with `orderer --help`
* CA-MSP:
	* CA-Server & Client runtimes both run in 'ca.org1.example.com' container
	* server listens to the 7054 port
	* at startup server starts using cryptofiles from attached volume
	* in the container shell we can issue commands like:
	* we can see available commands with `fabric-ca-server --help`. available commands are init and start. many options are available
	* we can see the options for client with `fabric-ca-client --help`. available commands are: enroll,getcacert,reenroll,register,revoke

### Lecture 38 - Chaincode Development

* Chaincode in Fabric can be written in Go, NodeJS or Java
* it has 2 parts (Asset Definitions & Transaction Definitions/Implementation)
* Asset Definitions is the digital representation of an asset. for NodeJS it is defined as part of Business Network Modeling. e.g.
```
asset SampleAsset identified by assetId {
	o String assetId
	o String value
}
```
* Transaction Definitions/Implementation: They create the Asset and manage the state of the Assets. an example in JS
```
transaction ChangeAssetValue {
	o String newValue
	---> Asset relatedAsset
}
```
* Transaction Def/Imp performs CRUD operations on Assets
* The development workflow for Chaincode:
	* Developer writes chaincode in his workstation in his prefered lang
	* He compiles and tests the code
	* he deploys the chaincode to peers using the 'Deploy' transaction
	* optionally in the Deploy txn developer can bundle the EndorsementPolicy of the chaincode
	* Delopyment txn is propagated to the whole Fabric network
	* If successful => txn log and state get updated
	* participants in the network can use applications using the Fabric API to invoke the chaincode.
	* chaincode invokations are recorded in the transaction log and state changes in the State DB
* The Deployment TXn deploys the Chaincode instance in its own container
* Execution or invokation of chaincode happends in these independent containers (each chaincode has its own runtime env)
* in our Fabric dev env we can deploy a Business Network Application on Fabric NW using composer cli command `composer network deploy -a ./airlinev8@0.0.1.bna -c PeerAdmin@hlfv1 -A admin -S adminpw`
* this deploys the compiled chaincode 'airlinev8@0.0.1.bna' which runs as a new docker container 'dev-peer0.org1.example.com-airlinev8-0.16.0'

## Section 8 - Using Composer Tools for Application Development & Administration

### Lecture 40 - Fabric Composer Playground

* we will familiarize ourselves with playground UI
* Composer Playgound is a web sandbox to which you can deploy. edit and test business network definitions
* it is available online [at](https://composer-playground.mybluemix.net)
* we can run it locally for security reasons on Linux and Mac `npm install -g composer-playground@0.20` or if we have issues accessing online playground
* the landing page is called wallet. it can have multiple tabs for each business application model/networks
* the default tab allows us to create a model initialized with the sample network definition
* we can create a new one selecting one of the available templates
* the user of the playground defines the model. models creates the model in the browser local storage
* user can also test the model
* we create a new model: Deploy a new business network => basic-sample-network => deploy
* after being created we click 'connect now'
* the model is composed by various files. to see them we hit 'Define' tab
* in 'README.md' we should document our model
* in 'Test' tab we can create entities in the sandbox that we have defined in the model
* we can also create a new participant '+create new participant'
* all assets and transactions defined in the model are available for testing
* the model validation rules apply even in playground
* playground can assist with coding the model
* the wrokflow using playground is: code the Txns in Playground UI => Download model to Local machine using (export): application archive (.bna) is stored on local machine => user can make changes and use 'Deploy'. to put it back on the Playground use 'import'
* using playground to code the model can cause problems in a team setup
* we can do local development with an editor (versioned files) and use playground only for simulated testing
* we can create the bna files with composer cli. the we upload the bna file to the playground for testing
* in playground aal are stored in browser => chrome dev tools => applications => storage

### Lecture 41 - [Yeoman](https://yeoman.io/) Hyperledger Generators

* There are 3 type of scaffoldings generated by HL Composer Yeoman generator:
	* Business Model Generator => model file
	* Network Application Generator => Network Application (Test cases, sample model file, sample transaction processor js code)
	* Angular sceleton web app (front end)
* to generate the code we run `yo hyperledger-composer` it asks which generator to use.
* we select 'Model' => name: test-model => enter other params => Namespace: test
* a folder 'test-model' is generated with the model.cto file
* we ran yeoman genrator selecting 'Business Network' naming it 'test-bna'
* we opt to generate a populated sample network
* the [Loopback](https://loopback.io/) generator is used for the customization of the REST server

### Lecture 42 - Participant Roles and Business network Cards

* Users in hl network take actions based on their roles
* business network card contains config info needed by the tools and apps for connecting to the business network apps and fabric infra comps
* Main roles for BNA are:
	* Peer admin: carries out activities at infra level (node level). they are created as part of env setup
	* Network admin:  carries out admin activities at app level. created by peer admin
* Users can take many roles. roles are defined as part of the BNA model
* Actions are perfomed based on role
* Peer admin creates NW Admin => Network admin creates network participants and can authorize them top create new participants
* there is no 1:1 rel between peer admi and nw admin. there can be 1 peer admin for many network apps each with its own nw admin
* to carry out actions on bn app user must have the proper role with credentials and way to interact (cli or sdk api to connect to the BNA)
* the app using sdk must have access to a Business Network Card.
* The card contains:
	* Crypto Credentials
	* Keys & Certs
	* Composer Connection profile (info how to access CA "https://..." and how to access the Peers "grpcs://....")
* A user can have multiple such cards on their machine to connect to different busines networks
* Cards are stored in the users fs "~/.composer/" in "/cards" folder as folders e.g '/PeerAdmin@Node-Name' or '/NetworkAdmin@BNA-Name'
* Key files and certificates are stored in '/client-data'
* Card name is composed by user id + @ + node or app. in  the card folder we will find:
	* 'connection.json' containing connection realted info
	* 'metadata.json' contaning
	* '/credentials' subfolder with crypto credentials (cert  and private key)
* connection.json contains:
	* urls for ca, orderer and peers , channel and msp id
* metadata.json contians:
	* username and roles
* cards are managed by Composer cli
	* `composer card --help` lists commands (list, create, delete, )
	* `composer card create --help` lists the params we need to pass to create a card
	* `composer card delete -c <cardname>` deletes the card
	* `composer card export -c <cardname -f <filename>` exports the card as file we can import with `composer card import` command

### Lecture 43 - Composer CLI Tool - Deploying a Network Application

* we can see composer cli tool available commands with `composer --help`:
	* `composer archive` creates an archive we can deploy on fabric or playground
	* `composer network` executes network actions like deploying
* we will see cli in action doing the following actions:
	* create a new BNA file for testing
	* deploy BNA to Playground
	* deploy BNA to local Fabric setup
* we launch yeoman generator `yo hyperledger-composer`
* select Business Network and use defaults to crerate 'test-bna' with sample network
* in '/test-bna' we add a folder '/dist' to add an archive
* in '/test-bna/dist' we run `composer archive create -t dir -n ../` seting teh type of files to add and the location (directory at /test-bna) using default name (no -a option)
* 'test-bna@0.0.1.bna' is created... we can import it to playground or deploy it in fabric
* defualt name is composed by info in test-bna 'pacjage.json' file
* in playground we choose: Deploy a new network => drop here to uplode or browse. we choose it name it and deploy it
* we connect to it
* To deploy to fabric we need to:
	* Launch fabric network `./startFabric.sh` in VM
	* verify / create the PeerAdmin Card `./createPeerAdminCard.sh` on Host
	* install the BNA archive to fabric using composer cli: in the folder of the archive file we run `composer network install -a test-bna@0.0.1.bna -c PeerAdmin@hlfv1` passin in the card name and file name
	* start BNA on fabric `composer network start -c PeerAdmin@hlfv1 -n test-bna -V 0.0.1 -A admin -S adminpw` creates the NetworkAdmin card on the local file system. the card needs to be deployed to the network admins machine to carry on nw admin actions. in the command we pass admin usernamme and password as _A and -S options together with network ids
* the new card 'admin@test-bna.card' is created in PWD and we can deploy it to the nw admin machine using `composer card import --help` e.g `composer card import -f ./admin\@test-bna.card` to see the apropriate options and veruify with `composer card list `

### Lecture 44 - Composer CLI Tool - Network Application Management

* we can use `compose network ...` to perform actions on a deployed network. e.g. deploy,download,list,undeploy,updata,upgrade, ping ...
* we gan 'ping' the nw to check this status. prereq is to have the Nwadmin card
* `composer network  list` logs out the details of all nw registries
* to issue network commands we need to add a ref to the nw admin card `composer network ping -c admin@test-bna`
* to get info from fabric peers regardin teh network `composer network list -c admin@test-bna`
* to upgrade the BNA on fabric we need to:
	* Create an archive for the new version of the BNA
	* install the new version of archive `composer network install ...`
	* list the network app `composer network upgrade ...`
* we create a new BNA:
	* in '/test-bna/package.json' we change `"version": "0.0.2",`
	* we run the archive commnad in dist `composer archive create -t dir -n ../`
	* we deploy the new file with install passing peeradmin card `composer network install -a test-bna@0.0.2.bna -c PeerAdmin@hlfv1`
	* we upgrade the bna with `composer network upgrade -c PeerAdmin@hlfv1 -n test-bna -V 0.0.2`
	* we ping the network to see the change `composer network ping -c admin@test-bna`

### Lecture 46 - REST Server Overview

* Nusiness Model is all about assets (resources)
* Transactions make changes to the state of these resources
* REST API is a good fit to operate CRUD ops on assets
* Composer REST server: Standalone NodeJS process that exposes the Business Network  (Resources or Assets) as REST API.
* REST Server sits utside of fabric and uses composer cli internally tyo manipulate the deployed Business Network App in Fabric
* once started user hits from a browser or from frontend app its URL 'http://localhost:3000/explorer'
* A frontend app can do CRUD operations and invoke model TXns in Fabric using the API
* to invoke the server `composer-rest-server` passing some options like: card to use, port, tls etc. options can be set in propmpt if we run just `composer-rest-server`
* of course HL Fabric must be running a lso our app must be running (use the util script to avoid shutdown)
* we launch using 'admin@test-bna` 
* the sample model we use has only two resources (SampleAsset and User)
* the web app offers a UI to manipulate assets. we create anew asset wth POST passing in 
```
{
  "$class": "test.SampleAsset",
  "assetId": "ID-1",
  "owner": "test-it",
  "value": "2000"
}
```
* we call GET and get it back. or get it by ID
* we can also execute RESTful commands on transaction
* we can issue a txn using POST passing in
```
{
  "$class": "test.SampleTransaction",
  "asset": "ID-1",
  "newValue": "1000",
  "timestamp": "2019-03-24T11:49:23.019Z"
}
```
* it gets an id and mods the asset value
* we aslo et a system API geting the ledger txn history and other
* REST server pros:
	* easy access to the NW resources specs
	* devs can use it to: explore,test, view txn
	* app code using it is simpler and easy o maintain

### Lecture 47 - REST Server Security

* in our current config anyone who knows the REST server url can acces and use the API
* we should use TLS ans authentication to secure it
* REST server uses passport.js for authentication
* to connect REST server user presents credentials and protocol according to passport auth strategy. NOT the blockchain identity
* token is attached to HTTP req
* rest server can use tls security for https
* rest server was configured with PeerAdmin card
* all reqs hitting fabric from rest server no matter whois the authenitated user (with passport) will use the peeradmin  card
* this is a threat
* ideally the txns should be signed with users own identity
* the solution is Multi User Setup
	* rest server is launced with launch idenity
	* we configure rest server to authenticate the callers. each callr sets up a wallet on rest server (connection profile) containing id and user keys
	* when user invokes API. rest srvr authenticates user and assignts to it the blockchain identity info linked to it from his wallet
* Implement MultiUser Setup only when users can TRUST the rest server to manage their private keys

### Lecture 48 - Skeleton Angular Application using Yo

* we can use yeoman hl composer generator to create a sceleton frontend app with AngularJS
* the proposed architecture is 3 tier Frontend + Composer+RESTserver + Fabric
* angular sceleton app is based on v2 and typescript
* we can use composer sdk directly (no rest http) to connect to fabric
* mid tier (compsoer rest server) is optional. a custom nodejs + composer sdk mid tier is possible
* 3 tier app is quick to implement, standardized, easy to test
* Securing composer rest server is a challenge
* fast track:
	* `./startFabric.sh`
	* `composer-rest-server`
	* `yo hyperldeger-composer:angular`
* Walkthrough:
	* launch fabric runtime
	* deploy the BNA 
	* lauch composer-rest-server with nw admin card
	* `yo hyperldeger-composer:angular`
	* start it `ng server`
* we start angular generator passing in the admin card naming it 'angular-test'
* By default the angular app is not picking up the proxy defined in "proxy.conf.js" file. This is the file where the proxy is set for the root "/api" i.e. REST server. In order to route api calls through proxy we need to start the angular application using proxy flag and the proxy config file.
* we `cd angular-test` and run `ng serve --proxy-config proxy.conf.js` (we need to install angular cli first `npm install -g @angular/cli`)
* our frontend app is live at 'http://localhost:4200/'

### Lecture 49 - Composer SDK Overview

* Composer SDK can be used to develop full stack apps on top of HL Fabric DLT
* SDK is avialble as npm modules to integrate in a JS app
	* Client module: hides protocol details
	* Admin module: automation of admin tasks
	* Common module: cpmmon interfaces
	* Runtime module: container env for chaicode
* all modules expose an api
* Clent Module is used in a JS app to connect to Fabric. credentials must be passed in the module. the app then can:
	* execute CRUD ops on assets
	* submit txns
	* subscribe to events
* alternative the js app  w/ client npm module can expose rest apis to a frontend app
* a js app w/ admin module is typicala tool and utility to carry out admin tasks like:
	* deploy/update BNapp
	* manage cards
	* ping the app
* Runtime module provides node js container to running bna. an external js app executes chaincode through the runtime api to:
	* execute crud ops on assets
	* implement business logic
	* emit events

## Section 9 - Business Network Application Modelling

### Lecture 50 - Case Study: ACME Airlines

* A fictional case study to show the fabric workflow
* acme airline facing 2 issues:
	* Unhappy partners: no visibility into commission payments, stale info, outdated system
	* customer dissatisfaction: unexpected flight delays and cancels, lost reservations, staff is misinformed
* Looking for a technology offering: seemless collaboration platform with no boundaries
* Solution: leverage HL Fabric to create a BN that would enable efficient B2B collaboration leading to better customer experience
* Parters will have access to info: 
	* Flight Data
	* Reservations, 
	* Logistics
	* transactions
	* payments
	* commissions
	* rewards
	* partner contracts
	* workflows
* Multiple BNs in the long term

### Lecture 51 - Modeling Language Files | Namespace

* Composer Modeling Language: An OO lang for defining the domain model for the business network
* Even a BA can use it (feels like natural lang)
* A business domain model defines the representation of:
	* participants
	* assets
	* transactions
	* events coming from txns
* BNM files are '*.cto'
* in a model file we first define the 'namespace' which applies to all resources defined in the file
* next in the file resources are defined (assets,participants, txns, events)
* importing resources from other files is possible (a model can be spread in multiple files)
* namespaces have to be unique across files
* naming convention '<namespace>.cto'
* 'System' namspace is reserved and contains base definitions of resources (abstract resource classes)
* ACME Airline Domain Model v1 (3 files):
	* 'org.acme.airline.aircraft.cto'
	* 'org.acme.airline.flight.cto'  
	* 'org.acme.airline.participant.cto'
* we use `yo hyperledger-composer` => Model => name: 'airlinev1' => namespace: 'org.acme.airline.aircraft'
* a folder is created containing the model folder (with .cto file) and package.json
* we open '/arilinev1/models/org.acme.airline.aircraft.cto' and delete all sample resources leaveing only namespace

### Lecture 52 - Defining the Resources

* we will add an asset in our model
* the simplest model would have one asset and one participant definition both with multiple uniquely identified instances
* when defining an asset OR participant  we need to define the id field.
* a boilerplate aircraft asset definition
```
asset Aircraft identified by aircraftId {
  o String aircraftId
}
```
* Composer Modeling lang supports many primitive types for attributes:
	* String
	* Double
	* Integer
	* Long
	* Datetime (ISO-8601 comp time instance)
	* Booolean
* we add 3 more attributes to our asset
```
  o Integer firstClassSeats
  o Integer businessClassSeats
  o Integer economyClassSeats
```
* the Composer Modeling lang suppoorts enumerations: List of constant values that may be assigned to afield as value. Data is validated against the 'enum' values. 
* 'enum' is used to declare enumeration types
```
enum Ownership {
  o LEASED
  o OWNED
}
```
* it then can be used as attribute: `o Ownership ownershipType`
* by default value for all declared fields in a definition is required. otherwise we must use the keywork 'optional' `  o String nickName optional`
* we may initialize a filed with a value (we must use the keyword 'default') `  o Ownership ownershipType default="LEASED"`
* we start the composer playground `composer-playground -p 3001` => Deploy a new business network => name: 'test1' => template: 'empty-business-network' => Deploy
* we connect => Define => Model File: => name 'org.acme.airline.aircraft' => cp code from editor => Deploy
* Go to Test => Create a New Asset => enter data
```
{
  "$class": "org.acme.airline.aircraft.Aircraft",
  "aircraftId": "CRAFT001",
  "ownershipType": "LEASED",
  "firstClassSeats": 10,
  "businessClassSeats": 20,
  "economyClassSeats": 100
}
```
* => Create New. We now have oone Asset in playground

### Lecture 53 - Support for Object Orientation

* Composer Modeling Lnaguage supports Object Orientation using 3 main concepts:
	* Abstraction: 'abstract'
	* Inheritance: 'extends'
	* Association: 'concept'
* Resources marked as 'abstract' cannot be instantiated (created) but can be inherited (extended)
* When we create anew resource by extending an abstract resource, the new resource must be the SAME type as the ancestor e.g if `participant ACMEParticipant abstract` and ACMENetworkAdmin extends ACMEParticipant is must be of type  'participant' `participant ACMENetworkAdmin extends ACMEParticipant`
* We can extend abstract and concrete classes
* Multiple inheritabce is NOT supported (we can extend only 1 class)
* we  create a new model folder 'airlinev2' cping the v1
* in v2 we add a new namespace and file 'org.acme.airline.participant.cto' adding `namespace org.acme.airline.participant`
* we add an abstract resource definition and 3 concrete resource classes that extend it
```
abstract participant ACMEParticipant identified by participantKey {
  o String participantKey
}
participant ACMENetworkAdmin extends ACMEParticipant {
}
participant ACMEPersonnel extends ACMEParticipant {
  o String department
}
participant B2BPartner extends ACMEParticipant { 
}
```
* Modeling Lang offers a contruct called 'Concept'. It is away to define concrete generic classes
* Concept classes are different than resources. A concept class DOES NOT represent a resource
* They are used to group together related fields and reuse them in multiple resource classes or even othjer concept classes without repeating code (DRY) . e.g an Address Concept
* Instances of concepts are contained in resource classes. they CANNOT Be Instantiated as is
* Concept can be concrete or abstract and is extendable
* concept definition
```
concept Contact {
  o String fName
  o String lName
  o String email
}
```
* constant instantiation in a resource as field `  o Contact contact`

### Lecture 54 - Modeling Arrays

* we create a new version v3 cping v2
* ACME airline offers flights US domestic routes. 
* Each route is identified by the Airport codes and is part of the flight definition e.g Flight101, ROute = EWR to HOU
* each flight has a unique id. a route can be served by different flights within the day each with a different id number.
* each flight offers many seats for reservations
* ACME operates many aircrafts, each of which is alocated to a flight
* a route can be served by a different aircraft
* we add a new namspace and file 'org.acme.airline.flight'
* we define the Route concept
```
concept Route {
  o String origin
  o String destination
  o DateTime schedule
}
```
* we define the Flight asset
```
asset Flight identified by flightNumber {
    o String    flightNumber
    o Route     route
}
```
* Acme flight codes have the pattern 'AE001'
* Acme shares seats in its flights with other airlines e.g Budget Aier sells tickets for its flight BU476 sharing seats on the AE101 flight
* Its common for multiple airlines to buy seats on a flight and sell them using their flight number, these flights are nothing more than an alias for the main flight
* Arrays are declared with [] notation e.g Integer[]
* We can create an Array of any type (concept)
* we add a new field in our FLight asset ` o String[]  aliasFlightNumber`

### Lecture 55 - Registries & Relationship between Resources

* Learning concepts: 
	* Registries are the runtime component that mamnages instances of assets and participants
	* 'Import' statements allows us to refer to resources defined on another namespace (file)
	* A relationship between resources can be defined
* we cp v3 to v4 and will extend our model to establish the relationship between flight and aircraft
* Registries: Manages instances of resources created at runtime
	* Each instance has a unique identity (key)
	* There is a searate registry for each resource type (much like document collections in MongoDB)
* Relationships between assets and or participants (resources) are depicted in teh model with --> notation, much like a reference or pointer to a specific asset type
* relaionships are per type not instance. much like the MongoDB schema.. 
* they havea name `--> AssetA PtrToA`. they can point to any instance of assetAssetA but not asset AssetB
* such a realtionship is between flight and aircraft. an aircraft is assigned to a flight
* To refer resources across namespaces we use 'import'
* we can import a Single resource or all resources in a namespace (*)
* we import Aircraft in flight.cto `import org.acme.airline.aircraft.Aircraft`
* we define the relationship in Flight asset `--> Aircraft  aircraft optional`
* we need to provide the value for a relationship field in a specific format. it requires a fully qualified resource name & identity "relationship_name: "namespace.Asset" #<ID>" e.g `"aircraft": "org.acme.airline.aircraft.Aircraft: #CRAFT001"`
* As our model becomes more complex its difficult to test it in playground by adding files one by one
* we need to use the CLI tool to create the archive file and then deploy it to playground. (use dist folder and command `compose archive ...`) e.g run `composer archive create -a dist/airlinev4.bna --sourceType dir --sourceName .` from the project root folder
* in playground we create a new business network uploading the bna file. we connect to the network for testing
* in Test assets and participants are there
* we create an Aircraft instance like before
```
{
  "$class": "org.acme.airline.aircraft.Aircraft",
  "aircraftId": "CRAFT001",
  "ownershipType": "LEASED",
  "firstClassSeats": 10,
  "businessClassSeats": 20,
  "economyClassSeats": 100
}
```
* and a flight with no aircraft associated
```
{
  "$class": "org.acme.airline.flight.Flight",
  "flightNumber": "AE001",
  "route": {
    "$class": "org.acme.airline.flight.Route",
    "origin": "EWR",
    "destination": "SEA",
    "schedule": "2019-03-25T19:11:26.491Z"
  },
  "aliasFlightNumber": [
    "BU456"
  ]
}
```
* we add a reference to aircraft instance in fligh instance using the notation `"aircraft": "org.acme.airline.aircraft.Aircraft#CRAFT001"`
* if the refernce to the resource is deleted in an aset update (e.g if the aircraft asset instance CRAFT001 gets deleted) the refernce will return null
* Relationships are unidirectional . in our case FLight -> Aircraft. if flight is deleted  aircraft is ok with that

### Lecture 56 - Adding the field Validations

* composer modeling language uses regex for validation
* we cp our model to v5. we will add regex validation for flight names and range validation for number of seats in a flight
* Composer runtime performs validation on field content (no complex business rules)
* Validation is done on format using regular expressions using keyword 'regex=' for String or range of number with keyword 'range=' for Number
* Regex usines a formal validation pattern. there are available patterns for standard uses
* Airport code is standard (3 letters all capital) regex is `regex=/[A-Z][A-Z][A-Z]/`
* we can use regex [webtool](https://regex101.com) to test against an expression
* number validation applies to Double,Long and Integer and we check the vlaue agains a range e.g `range=[100,]` accepts any mumber from 100 and above
* we archive and upload the model to playground to test validation
* playground does not allow us to create an instance if validation rules are not satisfied

### Lecture 57 - Resource Registries & Identities +Exercise

* we cp to v6 for the exercise
* all resources must have a unique identity in a business network
* the id field is what we spec as 'identified by'
* resourcesa re maintained in registries
* if we try to create a new resouce instance in the registry with the same ID as an existing one of same type. BN wil throw an error e.g. 'Error: Failed to add object with ID 'CRAFT001' as the object already exists'
* each flight the company fies is an asset witha unique ID. flights with same ID are scheduled normally in consequtive dates. if an operator tries to adda new instance of same route same id and another date it will get an error
* we will adjust the model so that same flight# can be used in multiple days
* we will add a new field as flightID instead of flightNum. the format will be flighnum (5chars)-date(MM-DD-YY) e.g 'AE101-04-01-18
* For the exercise:
	* Add another field [String flightId] to Flight model
	* Change the identified by to flightId
	* setup a regex to validate flightId
	* try it out in playground
```
asset Flight identified by flightId {
    o String      flightId regex=/[A-Z]{2}\d{3}-[0|1]\d-[0|1|2|3]\d-\d{2}/
    o String      flightNumber
    o Route       route
    o String[]    aliasFlightNumber
    --> Aircraft  aircraft optional
}
```
### Lecture 58 - Modeling the Transactions

* domain model should have the definitions of all transactions
* when transactions are executed events are emitted. events mst be defined as well
* we cp model v6exercise to v7
* Transactions: Actions that participants can take on assets
* in model txns are treated as resources
* when a tranaction gets executed by a participant. the state of an asset changes
* All transactions are recorded in the ledger so state of asset may be recreated by replaying the transactions
* In Acme irlines the logostics department may schedule a flight. this will create some assets (seats that customers can reserve). The travel agent can reserve a seat, B2B partners can block some seats to sell to their customers. End customers can select a specific seat once they have paid their ticket
* a transaction resource does not need the identified by keyword. they get a TransactionId assigned automatically as they get appended to the ledger. also they get a Timestamp recording the time of execution
* Participants execute transactions and transactions emit events. events can be received by subscriber applications. e.g a travel agent app would like to know as soon as a new flight gets scheduled to start selling tickets: Acme => {Create Flight} => {Event: FlightCreated} => Agents is ntotified
* An event can have multiple subscribers
* Events are defined as part of the model using the 'event' keyword. they dont need identified by. they get an eventId automatically and a timestamp upon emission
* we add the transaction and event definition to the model (theyr signature) in model language format
```
// Logisitcs department of ACME creates the flights
transaction CreateFlight {
  o String    flightNumber
  o String    origin
  o String    destination
  o DateTime  schedule
}

event FlightCreated {
  o String flightId
}
```
* the transaction logic is coded in JS. the txns js files are placed in the lib directory. 
* annotations in JS are used to connect the code to the model e.g 
```
/**
 * Create Flight  Transaction
 * @param {org.acme.airline.fligh.CreateFlight} flightData
 * @transaction
 */
function createFlight(flightData){

}
```
* annotations are defined as comment block defore the transaction JS function
* @param defines the annotation for the transaction in the model. it is followed by a full reference to the transaction in the model
* flightData encapsulates all transation parameters set in the model
* param name in annotation must match the one in JS function
* the JS function  typically uses component SDK APIs
* Historian: is an asset registry to record all successful transactions
* Assets contained in the Historian are system defined  asset models 'HistorianRecord'
* Historian tracks system transactions and user  defined transactions. its records may be queried
* we deploy the archive with the implemented transaction
* we create a new transaction. its record comes from teh historian
* an event is also emitted

### Lecture  59 - Exercise: Fix the code for generating the FlightId

* generateid function
```
function generateFlightId(flightNum, scheduleDate) {
    const date = new Date(scheduleDate);

    return `${flightNum}-${date.getMonth() + 1}-${date.getDate()}-${date.getFullYear() % 100}`;

}
```
* function call ` var flightId = generateFlightId(flightData.flightNumber, flightData.schedule);`
* Testing Steps
* start fabric `./startFabric.sh`
* Change the directory to airlinev7 dist subfolder	`cd dist`
* Create the archive `composer archive create  --sourceType dir --sourceName ../`
* Install the BNA `composer network install -a .\airlinev7@0.0.1.bna -c PeerAdmin@hlfv1`
* Start the BNA `composer network start -c PeerAdmin@hlfv1 -n airlinev7 -V 0.0.1 -A admin -S adminpw`
* Import the card that was generated
```
composer card delete -c admin@airlinev7
composer card import -f ./admin@airlinev7.card
```
* List out the network apps for this card `composer network list  -c admin@airlinev7`
* ping `composer network ping -c admin@airlinev7`
* list `composer network list -c admin@airlinev7`
* Launch REST Server `composer-rest-server -c admin@airlinev7 -n never`
* NOTE when we deploy transactions that use Composer Modules nwe need to add them to the package json

### Lecture 60 - Queries

* resource data are managed in registries and registries can be queried
* we cp v7 to v8
* we download [HLF-Fabric-API](https://github.com/acloudfan/) for testing 
* it has a util folder with generateFlights.js to generate test data
* THe resources defined in the model are managed in apersistent store. they can be queried at runtime using the Composer Query lang.
* Composer Query Lang is like SQL
* we can issue complex queries like 
	* How many seats are avaialble on AE102 at May12
	* get all flighs from NEwark on May12
* There are 2 types of queries: Named and Dynamic
* Named Query:
	* Defined as Part of the Business Network Model
	* Exposed as REST API by composer-rest-server component
* Dynamic Query:
	* Constructed dynamically @runtime
	* Using Composer API in Transaction processor function or in the client code
* In this lecture we will work with named queries
* All named queries are defined in a single file called queries.qry
* we start query with keyword 'query'. in {} we set:
	* description: provides the description of the query
	* statement: using composer query language
* query (sql like) statement is composed:
	* SELECT (mandatory operator, defines the Registry & Asset or Participant type) `SELECT org.acme.airline.flight.Flight`
	* FROM (optional operator, defines a different registry to query)
	* WHERE: optional operator, defines the conditions to be applied to the registry data e.g `WHERE (flightNumber -- _$flisht_number)`
	* AND , OR (logical operators) e.g `WHERE (route.origin == _$origin_airport AND route.destination == _$destination_airport)`
	* LIMIT: optional operator, defines the max num of resutls to return from a query, default limit = 25
	* SKIP: optional operator, defines the num of results to skip
	* ORDER BY: optional operator, defines the sorting of results ASC or DESC e.g `ORDER BY [flightNumber ASC]`. 
	* CONTAINS: optional operator , applies to array attribute
* query lang supports params:
	* uses the `_${param-name}` syntax
	* only primitive types are allowed (no concepts) e.g `$flightNumber`
* To test the named queries file in the model after deploying the model to fabric we launch rest-server ` composer-rest-server -c admin@airlinev8 -n always -w true -p 3001`
* to test the query we need to populate the resistries with record data using the util:
	* in 'HLF-Fabric-API' from course repo we `npm install` and `node util/generateFlights.js`
	* in rest-server we execute the queries passing sample dta (peek in data generation js file)

### Lec 61 - Exercise: Add a set of aircraft queries

Exercise

* In  this exercise you need to add a query to the airlinev8 model and execute it in the REST Browser.
* Create a query that would return all aircrafts
```
query AllAircrafts {
  description: "Returns all aircrafts in the registry"
  statement:  
    SELECT  org.acme.airline.aircraft.Aircraft
}
```
* Create a query that would return aircraft with specific ownership types
```
query AircraftsOwnership{
  description: "Returns all aircrafts based on ownership type"
  statement:  
    SELECT  org.acme.airline.aircraft.Aircraft
      WHERE ownershipType == _$ownership_type
}
```
* Create a query that would return aircraft with criteria:
       * count of firstClassSeats >= x
       * count of businessClassSeats >= x
       * count of economyClassSeats >= x
```
// Selects aircrafts based seating configuration
query AircraftsSeatConfiguration{
  description: "Returns all aircrafts based on seats"
  statement:  
    SELECT  org.acme.airline.aircraft.Aircraft
      WHERE (firstClassSeats >= _$firstClass_seats 
        AND businessClassSeats >= _$businessClass_seats
        AND economyClassSeats >= _$economyClass_seats)
}
```
* we upgrage arilinev8 network to v0.02

### Lecture 62 - Managing identities for Network Applications

* Learn Obj: Relationship between Participant & Identity, CLI Tools to manage Identities
* HL Fabriv manages identities using a PKI Implementation on the MSP
* each participant is issued an x509 cert (the flow is covered in prev lecture)
* any time a user initiates atransaction the VA validates his Cert that is used to sign it
* The BN Card we use so far contains the credentials (crypto material issued to the user) + Connection profile with urls to MSP|CA or Peers|Orderers
* Participants of BN Apps need to have a Card to interact with NEtwork App
* Participants are assigned a Role
* We have seen do far the Per Admin and NW Admin Role. aslo we ve seen the model struct for participats
* Roles are used for managing the permissions fro the participants
* Peer admin is crated during Fabric setup
* NW admin is created at BN App setup on fabric
* Other Participant  identities are created by Network Admin or by a participant authorized to create new identities as needed
* Composer CLI offers 2 commands to manage identities. user of this tool MUST have authority to manage identities (he must provide an appropriate card with the -c option)
	* `composer participant add --help`
	* `composer identity --help` 
* Composer identity command: 
	* bind: binds existing identity (cert) to participant
	* issue: issues a new Identioty (card) to participant
	* list: lists idenitties
	* request: gets the card for the requested identity
	* revoke: revoke an identity
* The workflow on an established network:
	* 1. Create the Participant
	* 2. Create | Βind an identity for BNA
	* 3. User/Participant imports the NW Card created in step 2
* Create the Participant: 
	* is done by NW Admin or authotzed participant 
	* `composer participant add --help` OR use the SDK/API for adding participants OR use Playground OR use Rest Server
* Create | Βind an identity for BNA:
	* again done by NW admin or authorized participant
	* `composer identity issue --help`
	* a card is generated for the participant
* How to manage identities on Playground:
	* We have v8 oimported on playground
	* a set of rules are already there for the Participant types in `namespace  org.acme.airline.participant`
	* we 'Create New Participant' passin gin info => Cllick 'ID REGISTRY' => enter an Id name and Participant type (choose one of existing ones)
	* IN Wallet a new Card is present for new user . we can connect with that one
* How to manage participants with CLI tool:
	* `composer participant add -d <JSON code representing the participant data> -c cardName`
	* JSON template we can get from playground
	* `composer identity issue -u johnd -a org.acme.airline.participant.ACMENetworkAdmin#johnd -c cardName -x`
	* -x controls if this user can maange identities
	* a card gets created.
	* we import the card and use it to issue commands with the cli
	* we can check the new id with `composer identity list -c admin@airlinev8` 

### Lecture 63 - Access Control Language (Part 1 of 2) Simple Rules

* Access Control Lang is used to issue access control rules for the various resources in the network
* we cp v8 to v9
* Should participants be able to access all resources & take any action on BN app?
* Access Control can be: 
	* programmatic, implemented in transaction processing functions, based on user context & transaction data
	* declarative: rules defined using the Access Control Language
* Access Control Lang provides Declarative access control over the elements of the domain model
* A signle file contains all the Rules: 'permissions.acl' in root folder
* if the file is missiing all is permitted
* There are 2 types of rules:
* Simple Rule: 
	* static in nature
	* controls access to namespace, asset or property of an asset by a participant type or participant instance
* Conditional Rule:
	* Simple Rule + Boolean JS expression evaluated at runtime to ALLOW or DENY acces to the resource by the participant
* A Rule is associated with:
	* a resource
	* a participant type
	* a CRUD operation
	* a transaction
	* a JS Condition
* ACL is JSON like lang
* ACL Simple Rule sysntax
```
rule Name-of-Rule {
	description: "Provide description in quotes"
	resource: "fully qualified resource spec"
	partiipant: "fully qualified participant spec"
	operation: ALL or comma separated CRUD ops
	action: ALLOW or DENY
}
```
* regarding resources we can spec a specific resource class or even a specific instance of the class `org.acme.airline.aircraft#CRAFT001`
* we can use (*) to spec all resources in namespace
* we can use (**) which is recursive meaning all child namespaces as well
* to apply rules on cli tools we use 'org.hyperledger.composer.system' as namespace and command name as resource type
* a rule may apply to a spec participant or all participants (using keyword ANY). at BNA level or system level
* NW ADMIN participant type is 'org.hyperledger.composer.system.NetworkAdmin'
* we can enfore rules to participant types or instances (like resources by id)
* CRUD ops can be controlled e.g 'READ< DELETE'
* How rules are processed?
	* first it checks if permission.acl file exists
	* if yes rules are executed in order of appearance
	* if rule is matched the n the spec action is granted
* Walkthrough: Rules on NEtwork ADMIN
	* NW admin is granted permission to do app management using cli tools (netwrok, identity, participant commands) AKA system resources
	* Manage identities for ACME nw app. issue , revoke identity
```
	// #1 Allow the 'System Network Admin' to carry out Identities management
//    and Network operations
rule NetworkControlPermission {
  description:  "give admin ALL access to system resources"
  participant: "org.hyperledger.composer.system.NetworkAdmin"
  operation: ALL
  resource: "org.hyperledger.composer.system.*"
  action: ALLOW  
}
rule ParticipantRegistryControlPermission {
  description:  "give admin ALL access to ACME participant types"
  participant: "org.hyperledger.composer.system.NetworkAdmin"
  operation: ALL
  resource: "org.acme.airline.participant.*"
  action: ALLOW  
}
```
* we add the rules in v8 and make a v 0.0.3 updating the NW
* we add a new participant (ACMENetworkAdmin, use: johnd)
```
composer participant add -d '{"$class":"org.acme.airline.participant.ACMENetworkAdmin","participantKey":"johnd","contact":{"$class":"org.acme.airline.participant.Contact","fName":"John","lname":"Doe","email":"john.doe@acmeairline.com"}}' -c admin@airlinev9
```
* we issue a new identity
```
composer identity issue -u johnd -a org.acme.airline.participant.ACMENetworkAdmin#johnd -c admin@airlinev9
```
* we import the card
```
composer card import -f johnd@airlinev9.card
```
* launch the rest server with the new card to see if we can create n Aircraft. he cant as he has no allowance on thios resource

### Lecture 64 - Exercise: Simple Rule for ACMENetworkAdmin

* In this exercise you will create the rules for "ACMENetworkAdministrator". The IT team at ACME have decided that ACMENetworkAdministrator will be responsible for the support of the business network application. Obviously for that they would need READ access to the following Resources:
	* System resources
	* ACME Resources
* Create 2 Read Rules in the permissions file.
	* AcmeNetworkAdminPermissionSystem - this rule would apply to any participant
	* AcmeNetworkAdminPermissionAcme - this rule will allow to only ACMENetworkAdministrator
* Testing:
	* Update the BNA 
	* Create a new identity (John Doe = ACMENetworkAdministrator) ... deploy the card for johnd
	* Start the REST-SERVER using johnd's card
* Can you read the existing resources?
* Create a new aircraft resource - are you able to do it? why or why not :-)

### Lecture 65 - Access Control Language (Part 2 of 2) Conditional Rules

* we will use HLF-Fabric-API/util 'bn-test-permissions.js' file to test permissions
* We should not allow CRUS operations on resources directly in our Web App.
* we should allow resource manipulation to happen only through controlled transactions
* Provide permissioned access to transactions
	* business logic cannot be bypassed
	* data stays consistent
	* prevents unauthorized changes
* CreateFlight txn adds a new flight instance to registry. we will block any CREATE operation on Flight resource and allow only to be created through the txn
* the use who will invoke the createflight will have:
	* resource: org.acme.airline.flight.Flight
	* operation: create
	* trnasaction: org.acme.airline.flight.CreateFlight
* this rule DOES NOT allow direct CRUD operation. ONLY through Txn
* additionally a valid Javascript conditional expression may be specified. this will be evaluated at runtime and allow or deny the transaction
* JS conditional expression can access various elements of the execution context through symbolic access. we can associate symbols to the various rules
	* resource (r)
	* operation (op)
	* participant (p)
	* transaction (tx)
* the rule will look like
```
...
participant(p): "org.example.SampleParticipant"
resource(r): "org.example.SampleAsset"
condition:(r.owner.getIdentifier() === p.get(dentifier())
...
```
* complex condtions are supported. we can use utility functions in JS in the script.js file and use them in the rule condtition `condtition: (evaluateAccess(r,p))`
* In our example we will create a new Participant of type ACMEPersonnelnamed William Smith (wills)
* the user will be allowed to invoke CreateFlight tranaction  with 2 rules:
	* Create Access to HistorianRecord is needed for Transactions. this rule will be applied to any user that is allowed to invoke any transaction
	* Create access needed for the CreateFlight transaction
* the 2 rules are
```
rule AcmeParticipantPermissionHistorian {
  description: "can write HistorianRecord to the Historian"
  participant: "org.acme.airline.participant.ACMEPersonnel"
  operation: CREATE
  resource: "org.hyperledger.composer.system.HistorianRecord"
  action: ALLOW  
}

// #3.2 Needed for Creating the "CreateFlight" transaction
// Only employees @ ACME can execute this transaction
rule ACMEPersonnelPermission {
  description: "only ACME personnel can create a flight"
  participant: "org.acme.airline.participant.ACMEPersonnel"
  operation: CREATE
  resource: "org.acme.airline.flight.*"
  transaction: "org.acme.airline.flight.CreateFlight"
  action: ALLOW
}
```
* we will update the BNA adding these rules
* we will issue an identity and create a participant
* we will use the bn-test-utility to test the setup `node bn-test-permissions wills@airlinev9 2019-04-01`
* Steps
	* add rules to permissions.acl
	* change version in package.jhson to 0.0.2
	* create archive `composer archive create  --sourceType dir --sourceName ../`
	* install bna `composer network install -a ./airlinev9@0.0.2.bna -c PeerAdmin@hlfv1`
	* upgrade network `composer network upgrade -c PeerAdmin@hlfv1 -n airlinev9 -V 0.0.2`
	* add participant
```
	composer participant add -d '{"$class":"org.acme.airline.participant.ACMEPersonnel","participantKey":"wills","contact":{"$class":"org.acme.airline.participant.Contact","fName":"Will","lname":"Smith","email":"will.smith@acmeairline.com"}, "department":"Logistics"}' -c admin@airlinev9
```
* issue identity
```
composer identity issue -u wills -a org.acme.airline.participant.ACMEPersonnel#wills -c admin@airlinev9 
```
* import card `composer card import -f wills@airlinev9.card`
* run script

### Lecture 66 - Exercise: Conditional Rule for ACMEPersonnel

* In this exercise you need to fix the existing rule ACMEPersonnelPermission by adding a condition that would check if the participant is from Logistics department - if that is true then ALLOW access.

* Testing
	* Comment the existing rule
	* Add the updated rule (with condition)
	* Update the BNA
	* Create a new participant of type ACMEPersonnel- Susan Milo (susanm), with department = "Accounting". Hint: Use the participant add command in Readme.md as template
	* Issue an identity for susanm
	* Use the utility bn-test-permissions for testing the rule with wills card - CreateFlight should succeed
	* Use the utility bn-test-permissions for testing the rule with susanm card - CreateFlight should fail
```
rule ACMEPersonnelPermission {
  description: "only ACME personnel from Accounting can create a flight"
  participant(p): "org.acme.airline.participant.ACMEPersonnel"
  operation: CREATE
  resource: "org.acme.airline.flight.*"
  transaction: "org.acme.airline.flight.CreateFlight"
  condition:(p.department == "Logistics")
  action: ALLOW
}
```
```
composer participant add -d '{"$class":"org.acme.airline.participant.ACMEPersonnel","participantKey":"susanm","contact":{"$class":"org.acme.airline.participant.Contact","fName":"Susan","lname":"Milo","email":"susan.milo@acmeairline.com"}, "department":"Accounting"}' -c admin@airlinev9
Participant was added to participant registry.
```

## Section 10 - Composer SDK / API : Coding the Client Apps

### Lecture 68 - Business Network Card Management

* Lecture Learning objectives
	* Card storage + wallet
	* Composer Common API for managing Cards (IdCard, BusinessNteworkCardStore,NetworkCardStoreManager)
* sample coda @ 'manage-card.js' @ HLF-Fabric-API repo
* BN Card: user interacts with HL Fabric network using the Composer tool. composer tool needs the BN Card (crypto, credentials)
* Cards can be stored in any type of storage:
	* File System
	* Memory (RAM)
	* Database
	* Cloud
* The BN Apps are exposed to participants usually via a mid-tier app (typical NodeJS + Composer API)
* Mid tier (serverside app) needs the cards to operate on BN App in Fabric.
* Cards are in a logical  construct called Wallet in mid tier
* When user authenticates and invokes a REST API call in the midtier. the app will pull out a card from wallet for the user to hit the Fabric BNA through the Composer API
* Each app user will have his own wallet. Mid tier needs to persist these cards
* Composer API does not enforce how the cards are stored. its the responsibility of the architect to find the best way to persist the cards
* The **IdCard** class in the Composer Common API module: 
	* encapsulates the attributes of the BN Card
	* we can use this class to get information from the card [user name, credentials, role, metadata]
	* load a card from: an Archive OR a directory
	* the workflow is to create an object and call getters on it
	* we can create new cards by creating a new object of type IdCard and save it to an Archive OR a dir
* The **BusinessNetworkCardStore** class in the Composer Common API module:
	* we can use an object of this class to manage cards in the persistent sorage
	* access the card(s) deployed on the machine
	* check if the name card exist
	* add & delete cards from store
	* avaialble methods retrieve cards `IdCard get(cardName)` `IdCard getAll()` check existence `bool has(cardName)` add remove `delete(cardName)` `put(cardName,new IdCard())`
	* its an abstract class. we cannot instantiate with 'new'. an instance of this class is retrieved from an instance of 'NetworkCardStoremanager' on Composer Common API
* The **NetworkCardStoreManager** class in the Composer Common API module:
	* is a factory for creating instance of 'BusinessNetworkCardStore'
	* no matter the actual physical implementation we use it
	* a single instance NetworkCardStoreManager is avaialbe from the Composer Common API module to the  CLient App
	* to access this instance from client code `const NetwrorkCardStorageManager = require('composer-common').NetworkCardStoreManager;`
	* it exposes a single function 'getCardStore(type)' to get the BN CardStore instance. `const cardStore = NetworkCardStoreManager.getCardStore( walletType );`
	* there are 2 predefined wallet types or CardStore types: inmemory and filesystem
```
var cardType = {
	type: 'composer-wallet-filesystem'
}
var cardType = {
	type: 'composer-wallet-inmemory'
}
```
* Devs can create custom storage types for wallets/cards
* in the demo code 'manage-card.js' we learn how to use the API to create a  cardstore for fs based wallet. it is done in 4 steps
	* 1. Get the instance of the NetworkCardStoreManager
	* 2. Create instance of BusinessNetworkCardStore for filesystem based wallet
	* 3. BusinessNetworkCardStore : Get all cards on file system & print the names on console
	* 4. BusinessNetworkCardStore :Get the first card by name
	* what we will see in console are the cards already in our fs

### Lecture 69 - Admin Connection Class

* To Take actions of Fabric network and a BN App on Fabric an app needs to connect to Fabric.
* There are 2 ways for an App to connect to Fabric depending on the actions we want to perform. the AdminConnection Class and the BusinessNetworkConnection Class
* In this lecture we will learn about the AdminConnection class from the Composer API Admin Module
* also we will learn about the BusinessNetwrokDefinition class from Composer API Common module needed by some AdminConnection class exposed methods
* 2 source code files contain sample code for this lecture 'admin-connection.js' and 'update-bna.js'
* The **AdminConnection** class from Admin Module:
	* is used for Administrative actions on Fabric Runtime
	* is used for Administrative actions on deployed BN App
	* an instance is created with 'new'
	* Constructor needs a JSON object that provides the 'wallet-type' filesystem, inmemory or custom
	* there are 2 kinds of administrative actions: Card related functions (getAllcards,hasCard, deleteCard,importCard, exportCard) much like `composer card` cli commands and BNA Management functions (install, start, list, ping,reset ,upgrade) mush like the `composer network` cli command
* The **BusinessNetworkConnection** clsass from Composer API CLient module:
	* for executing transactions, CRUD operations, Receive events
* To make the connection both classes expose the `.connect(cardName)` method
* the card needs to be avaialbe in the cardstore and `.disconnect()` to disconnect
* in the demo code in 'admin-connection.js' we see how to:
	* 1. Create an instance of the AdminConnection object
	* 2. Connect as the PeerAdmin
	* 3. List the deployed Business Network Apps
	* 4. Disconnect 
	* 5. Connect as the Network Admin for airlinev7
	* 6. Ping airlinev7
	* 7. Disconnect
* To install a new archive (.bna) to the Fabric Runtime we can use `.install()` which needs an instance of BusinessNetworkDefinition class and then call `.start()` or `.upgrade(Version,)`
* The **BusinessNetworkDefinition** class of Composer API Common Module:
	* represents the BN app (meta data, domain specific resource model, scripts)
	* to create an instance of this class: use `.fromArchive() method` that reads a .bna file, use `.fromDirectory()` to  read the content of the model from a dir
* in 'update-bna.js' demo code we will showcase BusinessNetworkDefinition class by:
	* 1. Create the Admin Connection instance
	* 2. Connect
	* 3. Create the Business Network Definition Object `BusinessNetworkDefinition.fromDirectory(bnaDirectory)`
	* 4. Update the airlinev7 model in runtime
	* 5. Disconnect

### Lecture 70 - Business Network Connection Class

* sample code for this lecture in 'bn-connection-util.js' and 'test-bn-util.js'
* The **BusinessNetworkConnection** clsass from Composer API CLient module:
	* is used to interact with a deployed BN App (Get info about the BNapp, ping the nw,  access registries from runtime, manage identities, submit txn)
	* Constructor of this class needs instance of 'BusinessNetworkCardStore' `new BusinessNetworkConnection(cardStoreObject)`
	* before invoking any function on BusinessNetworkConnection object we need to connect the object to the runtime with `.connect(cardName)`
* in 'bn-connection-util,js' demo code we will:
	*	1. connect - takes a callback function as an argument
		If Success : execute callback()
  	Else : execute callback(error)
	* 2. disconnect
	* 3. ping - takes a callback(response, error) as an argument
* these methods are exported as a plugable module to use in any source file like 'test-bn-util.js' that implements the callback

### Lecture 71 - Submitting a Transaction

* To submit transactions for processing we need multiple classes:
	* **Factory** class from API Runtime module: it is used to create new resource instances.
* To get access to the factory we need:
	* BusinessNetworkConnection class from Client module
	* BusinessNetworkDefinition from Common module
* Resource class from Common module is used represents an instance of the resource type defined in the module
* the demo code for this lecture is in 'bn-factory-submit-txn.js'
* The function `.getBusinessNetwork()` of **BusinessNetworkConnection** is used to get information about the BN app from Runtime. it returns an instance of **BusinessNetworkDefinition** class. this class encaptulates info about the BN App. This class exposes the function `.getFactory()`. this function returns an instance of the **Factory** class of the Runtime module
* The **Factory** class from API Runtime module is used to create new resource instances. It offers 5 functions:
	* `.newResource(namespace,type,identifier)` creates a new **Resource** class object from Common module. the type is what is defined in BNApp
	* `.newCOncept(namespace,type,options)` creates an instance of **Concept** class from Common module
	* `.newRelationship(namespace,type,identifier)` creates a new **Relationship** class object from Common module. a pointer tot he resource identified in the identifier
	* `newEvent(namespace,type,id,options)` creates an instance of event (Resource class of type event)
	* `newTransaction(namespace,type,identifier,options)` creates an instance of **Resource** class of type transaction
* This transaction instance can be submitted for processing using the instance of **BusinessNetworkCOnnection** of Client module using its `.submitTransaction(transaction)`
* The **Resource** class from Common module represents a resource instance that has a Type (BN Model resurce definition) e.g Flight or Aircraft event our txn has a type 'CreateFlight'. how to use it
```
var createFlightTransaction = Factory.newTransaction(...,...);
createFlightTransaction.setPropertyValue('property_name','property_value)
```
* in the demo code we will see how to:
	* 1. Use the bn-connection-util to create the connection to airlinev7
	* 2. Get the Busines Network Definition from Runtime
	* 3. Get the factory from the Business Network definition
	* 4. Create a new Transaction instance
	* 5. Set the property values in the transaction object
	* 6. Submit the transaction

### Lecture 72 - Registries

* code for this lecture in 'get-registries.js'
* we saw how the composer runtime persists the instances of the resources in the Registry
* there are multiple registries in the runtime for the BN each for a different type of resource
* The **Registry** class of API Client module is an abstract class that represents an actual Registry:
	* we can carry out CRUD operations on registry using methods of Registry class
	* Resource type added to the registry MUST match with Registry
	* There are multiple concrete Registry implementation classes
		* **AssetRegistry**
		* **ParticipantRegistry**
		* **TransactionRegistry**
		* **Historian** : Read only. stores historian records
		* **IdentityRegistry** : Read only : set of identifiers on the blockchain
* There are separate Asset & Participant registry for Client & Runtime:
	* AssetRegistry & ParticipantRegistry classes are available in the Client module. an instance is received through the BusinessNetworkConnection object
	* AssetRegistry & ParticipantRegistry classes are available in the Runtime module. an instance is received through a global function call in Transaction processor function
* To get access to the Registry instance the app needs to connect to the runtime using **BusinessNetworkConnection** and then invoke the `.getRegistry(FQ registry name)`. what we get back is an instance of the **Registry** class. specalized getter avialable are:
	* `.getAssetRegistry(RegistryName)`
	* `.getParticipantRegistry(RegistryName)`
	* `.getTransactionRegistry(RegistryName)`
	* `.getHistorian()`
	* `.getIdentityRegistry()`
* BusinessNetworkConnection class offers methods that return lists of registries based on resource type:
	* `getAllAssetRegistries()`
	* `getAllParticipantRegistries()`
	* `getAllTransactionRegistries()`
* In the demo code 'get-registries.js' we will see these methods in action:
	* 1. Use the bn-connection-util to connect
	* 2. Get & Print the Asset Registries
	* 3. Get & Print the Participant Registries
	* 4. Get & Print the Transaction Registries
	* 5. Get & Print the Historian Registry
	* 6. Get & Print the Identity  Registriy

### Lecture 73 - Resources

* we will see how to use methods offered by Resource class (Common module), and how to use Registry class instance to perform CRUD operations on registgries
* The **Resource** class in Common module represents an instance of Type in the Registry:
	* an example of type is AIrcraft in our BNapp 
	* Resource instances are like pointers to the instances in the registry
	* New instances of the Resource class are created using the **Factory** class
	* Existing Resource instances are received from the registry using **Registry** class
* A Resource instance offers various getter methods:
	* `getType()`
	* `getNamespace()`
	* `getFullyQualifiedType()` // Namespace.Type
	* `getIdentifier()`
	* `getFullyQualifiedIdentifier()` // Namespace#id
	* `instanceOF(Namespace.B)` false
	* `isRelationship()` // if an instance represents a relationship
* A Resource instance offers various setter methods:
	* `setIdentifier(new-identifier)`
	* `setPropertyValue(prop-name,value)`
	* `addArrayValue(prop-name, value)`
* An instance of Registry is used to perform CRUD operations
	* CREATE: `add(resourceInst)` , `addAll([resource1,resource2,resource3])`
	* READ: `get(resourceId)` , `getAll()`
	* UPDATE: `update(resourceInst)` , `updateAll([resource1,resource2,resource3])`
	* DELETE: `remove(resourceInst)` , `removeAll([resource1,resource2,resource3])`
* in the demo code 'add-resources.js' we will:
	* 1. Connect using the bn-connection-util
	* 2. Get the AssetRegistry from connection
	* 3. Create 2 instances of Aircraft resource using the factory & initialize
	* 4. Invoke registry.addAll([Array of Aircraft resource instances])

### Lecture 74 - Querying the Registries

* we will learn how to invoke named and dynamic queries using the **BusinessNetworkConnection** class from Client module
* we will work on v9 which model has a query file. the demo code in in 'client-query.js'
* Named Queries: 
	* defined as part of the BN Model (have seen this)
	* exposed as REST API from composer Rest Server component
* Dynamic Queries:
	* constructed dynamically @ runtime
	* 2 ways to use them: Composer API in Transaction Processor function OR Client code
* The API for executing queries of both types in client code is available in **BusinessNetworkConnection** class instance
* we can invoke a named query with the `.query(named, parameters_object)` method
* to execute a dynamic query:
	* first use the `.buildQuery(query_statement)` method. it returns a query object
	* second we use the query object in the `.query(queryReturned, parameters_object)` to invoke the query
* The result is always a JSON object array
* in our demo code ''client-query.js' we will
	* 1. Create the Client Connection
	* 2. Execute a Named Query using Client Module : query()
	* 3. Create a Dynamic Query using Client Module : buildQuery()
	* 4. Execute the Query

### Lecture 75 - Subscribing to Events

* In our client app we can listen for events coming from the BNapp
* to listen to events we can:
	* use the client API
	* use the REST server
* our demo source code files are 'subsribe-event.js' for client API and 'subscribe-event-ws.js'  for web server
* Events use is HL Fabric:
	* Participants execute Transactions
	* Transactions emit Events
	* Apps subscribe to the Events (client API or composer-rest-server)
* Events are defined in the BN Model e.g.
```
event FlightCreated {
	o String flightId
}
```
* B@B partent client apps will want to subscribe to this event
* Subscriber will receive ALL emited events. Criteria based subscription is NOT supported (YET)
* Event filtering must be implemented in application logic
* 2 ways to subscribe:
	* Event subscription API
	* Websocket connection to COmposer REST Server
* To use the Event subscription API we have to use the **BusinessNetworkConnection** from Client module. BNConnection extends EventEmitter builtin class from NodeJS
* we can use the BNConnection class`.on('event',callback)`
* in `subscribe-event.js' we see sample code for creating subscription in client app using the API
```
    // #2 Subscribe to event
    bnUtil.connection.on('event',(event)=>{
        var namespace = event.$namespace;
        var eventtype = event.$type;

        var fqn = namespace+'.'+eventtype;

        // #3 Filter the events
        switch(fqn){
            case    'org.acme.airline.flight.FlightCreated':        
                    // #3 Process the event
                    counter++;
                    console.log('Event#',counter);
                    processFlightCreatedEvent(fqn, event);
                    break;
            default:    
                    console.log("Ignored event: ", fqn);
        }
    });
```
* we test it and it works. message is received as JSON
* Composer REST server uses the API to subscribe to all events from BNApp.
* It exposes a websocket interface for our app to consume
* our client app thwen connects to 'ws://localhost:3000' at the REST server to listen to the emited event
* we use 'subscribe-events-ws.js' websocket event content is received as String

### Assignment 1: Write a utility to create | delete test data​ for ACME Airline Model

* Code at 'deleteAllFlights.js' and 'populate-acme-airline.js'

## Section 11 - Composer SDK / API : Coding the Transaction Processors

### Lecture 76 - Embedded Runtime for Testing

* Composer supports Embedded Runtime and is used for Unit Testing
* sample code for this lecture at 'ut-harness.js' and 'test-ut-harness.js'
* Composer supports 3 execution or runtime environments:
	* Fabric Runtime (dev or prod)
	* Cmposer Playground (cloud or local)
	* Embedded Runtime Env (nodeJS)
* The **Embedded Fabric Runtime**
	* simulates the Fabric runtime
	* to use it we need to setup some code alognside the utnit testing code
	* before unit test code is executed the network app is deployed in the embedded platform and then unit test code gets executed
	* embedded runtime uses inmemrory persistence for registries. anything generated by the test code is transient
	* no special lib for the embedded runtime. is part of the composer SDK
* To use the Embedded Runtme the dev of the test code needs to set up the app in the embedded runtime:
	* Createa dummy peeradmin card(in profile type is = embedded)
	* import the card in the cardstore using AdminConnection class of Admin module
	* **AdminConnection** object is used to deploy model files in the embedded runtime. Upon deployment a NetworkAdmin card is created
	* NetworkAdminCard is imported in teh cardstore
	* After the **BusinessNetworkConnection** object is created. using the network admin card a connection is made between  BNConnection object and EmbeddedRuntime
	* Then the Uni test cases can use the **AdminCOnnection** and **BusinessNetworkConnection** instance to execute test cases against the deployed BNApp on the Embedded Runtime
	* A lot of boilerplate code is used to set up the connection to EmbeddedRuntime
	* for our testing 'ut-harness.js implements the connection for testing peurposes. it implements
	*	1. Setup the Peer Admin IDCard
	* 2. Setup the MemoryCardStore
	* 3. Create the admin and business network connection
	* 4. Use adminConnection to import the PeerAdmin card
	* 5. Connect the adminConnection to embedded runtime
	* 6. Create the business network definition fromDirectory
	* 7. Install the business network definition
	* 8. Start the airlinev9
	* 9. Import the network admin ID Card
	* 10. Invoke the connect on businessNetwork connection object
	* 11. Invoke Callback(....)
* in 'test-ut-harnes.js' we see how to import and use the test harness. we actually test ithe harness itself. the steps implemented in this sc are:
	* 1. utHarness = require('./ut-harness');
	* 2. Call the initialize function on the ut-harness
	*      A) Folder for the model project
	*      B) Callback function receives the:
	*           adminConnection, 
	*           businessNetworkConnection,
	*           businessNetworkDefinition
	* 3. The unit test code is written in the callback function
* the callback for testing the harnes itself is `utHarness.initialize(modelFolder, (adminCon, bnCon, definition)=>{...}`
* the test logs both registries
* the test runs without starting the fabric runtime... it run on embedded runtime

### Lecture 77 - Crash course in Mocha and Chai

* Unit testing: Isolate each part of the program and show that parts are correct
* We should develop test cases for client code and BNapp as well
* The unit testing setup for BNapps in Fabric is: NodeJS EmbeddedRuntime+Mocha+Chai
* Benefits of the setup
	* testing by developer for increased productivity
	* repeateable | automated test cases
	* improved code quality
* mocha global install `npm install -g mocha`
* chai local install `npm install chai`
* with mocha we use js test files run with mocha `mocha test-file.js`
* test files use the 'describe' (test suite) and 'it' (test case) statements.
* describes can be nested
* preconditions and postConditions (cleanup) are done with hooks (lifecycle methods)
	* `before(callback)` // runs before all tests in block
	* `beforeEach(callback)` // runs before each test in block
	* `after(callback)` // runs after all tests in block
	* `afterEach(callback)` // runs after each test in block
* we see mocha in action in 'mocha-demo.js'
* hook function execution is Asynchronous. if we want to make hook function execution Synchronous we need to use `done()` in the callback when our code has done what we want befoer continuoing with actual tests
* Chai is a BDD/TDD assertion library for node and the browser that can be paired with any JS testing framework. assetions types used (they must be imported to be used):
	* `assert`
	* `should` BDD
	* `expect` BDD
* we see chai in action in 'chai-demo-assertions.js' and 'chai-demo-bdd.js'
	* asserion `assert.equal(true, true, 'otherwise problem');`
	* bdd ` expect(true).to.equal(true);`

### Lecture 78 - Writing Unit Test Cases for Network Applications

* we will use the file 'my-test.js' to run actual unit tests on the BNApp using the embedded runtime and test libs
* we can use the  yeoman hyperledger-composer generator test templates `yo  hyperledger-composer`. the 'test.js' test file is in the generated model folder
* alternatively we can create a test case file copyin code from 'mocha-ut-harness-template.js'
* Writing Unit Test Cases steps:
	* 1. Arrange Embedded Runtime Env (Deploy BNA to Runtime & Connect)
	* 2. Define test cases and code the test cases against the runtime env
	* 3. Implement assertions.
	* 4. execute test suite
* we cp 'mocha-ut-harness-template.js' in our generated project folder 'test-bna' in /test folder and rename it
* we change the path to 'ut-harness.js'
* we change path to our model folder
* we initialize all required classes in before() in which we use done. 
* we create test suite with describe()
* sample project folder has model file with assets. we use its namespace fro out test
```
const nameSpace = "test";
const resourceName = "SampleAsset";
```
* the actual test case is
```
it('should have 1 asset instance with value=10', () => {
        let registry = {};
        // Add an asset
        // Get the asset registry using the BN Connection
        return businessNetworkConnection.getAssetRegistry(nameSpace+'.'+resourceName).then((reg)=>{
            registry = reg;
            // Get the factory using the BN Definition
            const factory = bnDefinition.getFactory();
            // Create the instance
            let sampleAsset = factory.newResource(nameSpace,resourceName,'SA-1');
            sampleAsset.value=10;
            // Add to Registry
            return registry.add(sampleAsset);
        }).then((asset)=>{
            // Assert
            assert.equal(asset.value,"1","Value not equal or undefined");
        }).catch((error)=>{
            console.log(error);
        });
    });
```

### Lecture 78 - Runtime API for Transaction Processing Functions

* an instance of Runtime API Class **Api** of Runtime module is available in the transaction processing function by default
* in this Lecture we will go through the code of the transaction processing function of the CreateFlight transaction we created in the airline model
* We will learn about 2 new classes: **AssetRegistry** and **ParticipantRegistry** both from the Runtime module
* we will learn how to handle errors in the transaction processing functions
* We will extend the transaction processing function of CreateFlight transaction and add test cases to run on embedded runtime
* Τhe **Api** class of the Runtime module: 
	* contains ROOT of the transaction processor API
	* our function implementation will be executed in the Fabric runtime
	* an instance of the Runtime **Api* class is made avaialbe in the transaction function code
	* all exposed functions of Api class are avialable in our function code by default as global functions (no api.function needed)
* transaction processor code manages the resource instance + business logic. to perform CRUD operations on resources it needs access to the Registry. it acheives that with **Api** class:
	* `getAssetRegistry()` returning an instance of the **AssetRegistry** class`
	* `getParticipantRegistry()` returning an instance of the **ParticipantRegistry** class`
* These are different instances from th instances we get with same functions on BNConnection class (Registry class in Client module). it is the same concept of perfoming crud operations directly and doing them through transaction (direct CRUD can be blocked but transactions allowed)
* Runtime module Registry concrete classes extend the Client module Registry abstract class
* geting access to the concrete Registry classes allow us to use the full set of CRUD operations on the resource instances (we have seen these methods)
* when the  Runtime **Api** instance throws an error it rolls back all changes prior to the error throw (in the scope of the transaction)
* we can take advantage of this and use it to perform sanity checks in the code (e.g double instance rollsback all transaction)
```
if(some-condition){
	// rollback all changes & inform caller about the error
	throw new Error("Print a message")
}
```
* in airlinev9 we will implment the txn `function createFlight(flightData)` to: throw an error if 'schedule date is past, add a Flight asset
* we will implement 'schedule-validation.js' to unit test the code in the transaction createFlight
* in 'script.js we have the `createFlight()` implementation
	* we throw an error on validation check for rollback
	* we get the registry and use the factory to create a resource
	* we use factory to create a concept for the resource
	* we emmit an event aty the end using factory
	* we return the registry with the new resource in
* in test scenario 1 in 'schedule_validaation.js'
	* we build the transaction passing props and submit it.
	* when it returns we assert registry lkength

### Lecture 80 - Exercise: Define the Aircraft Assignment Transaction

* Add the following Transaction to the model file
	* 'org.acme.airline.flight.AssignAircraft'
	* Parameters: {o String flightId o String aircraftId}
* Add the event
	* 'org.acme.airline.flight.AircraftAssigned'
	* Parameters: {o String flightId o String aircraftId}
* Code the Transaction Processor function 'AssignAircraft'
	* Check if flight and aircraft exist - if not throw an exception
	* Use factory to create the relationship
	* Assign relationship to fligt
	* Use registry to update the flight
* Code the unit test case 
	* In before() add some test data 
	* Create the test case file (Solution is in aircraft-assignment.js) .... refer to the schedule-validation.js for help :)
* Write the test cases for:
	* Sunny day scenario
	* FlightID does not exist

### Lecture 81 - Query invocation in Transaction Processing Functions

* Query functions are available in the BNConnection Client module class. we talked about them in aprevious lecture (nmaed, dynamic queries)
* Query methods are avalable in **Api** class of Runtime module. directly in our transaction we can use `query()` and `buildQuery()`
* to query world state Fabric setup should be a COuchDB
* Why perform queies in transactions?
	* batch queries
	* calculations
	* consolidations/rweporting
* A realistic use case for our app: 
	* ACME aircrafts sometimes go for unplanned maintenance.
	* All flights that are assigned the aircraft need to be updated with a new aircraftId/assignment (batchUpadate)
	* We need to create a transaction that would allow the Logistics to do batch updates (named or dynamic query) 
	* `UpdateAircraftBatch(...)`
	* query the flights from today or N days that are assigned a specific aircraft
	* update the assigned aircraft to passed aircraft ID

### Lecture 82 - Implementing Programmatic Access Control

* In Composer there are 2 ways to carry out Access Control:
	* Programmatic: rules coded in the transaction processing functions (based on user context & transaction data)
	* Declarative: rules defined using the Access Control Language (ACL)
* 2nd way we saw. now we will see the 1st way
* To implement aaccess control in transaction code we use `getCurrentParticipant()` from Runtime module **Api** class instance. the method returns an instance of Common module **Resource** class representing the participant that invoked the transaction.
* using the `getFullyQualifiedType()` of the Resource instance gives the participant type
* to get the ID of the participant we use `getFullyQualifiedIdentifier()` of the returned Resource instance
* examplke of programmatic accesscontrol 
```
function createFlight(flightData){
	getCurrentParticipant();
		if(getFullyQualifiedType() == 'org.acme.airline.participant. ACMEPArticipant')
	// createFlightCode
}
```

### Lecture 83 - Emitting events and Integrating with external systems

* [RuntimeApi](https://hyperledger.github.io/composer/v0.19/api/runtime-api)
* **Api** class of Runtime module offers `emit(events)` method to emit events as it extends NodeJS event emitter class. this method emits an event defined in the transaction
* the 'event' definition is created as part of the model. it is populated in transaction and it is received as JSON by the subscriber
* Resource instances in transaction are JS objects. they can be can be converted to JSON with the Common module Serializer class instance we get with `getSerializer()`. the serializer exposes 2 methods `toJson()` and `fromJson()`
* Somestimes we want to integrate the BNApp with external systems such as:
	* DBs
	* legacy Systems
	* Heavy processing units
* As long as these external systems expose a REST API we can integrate them directly to BNapp
* Runtime module **Api** clas exposes `.post(url,typed)` method as global. typed can be: concept, asset, participant, transaction
* When transaction processor function invokes the porst method it creates the JSON representation of the instance passed as typed. this is sent to the external system's REST API endpoint
* The remote ReST endpoints responds with a JSON object which can be converted back with getSeriealize()
* A challenge when using 'post()' method is consensus. if 3 peers execute the transaction invoking post to an external system firs two might get {x:1} and 3rd {x:2} as reply if in the meantime the data in the external system is altered. this causes consensus failure
* to solve it we have to make sure the result of the REST request is a pure function (indempotent). from the same input of all peers there should be the same output for all peers

## Section 12 - Developing Front End Applications for Network Applications

### Lecture 84 - Application Design Patterns

* We will see 4 Architectural Patterns for BNA Frontent Apps
	* Composer Rest Server middleware
	* Custom middleware
	* Hybrid middleware
	* Desktop app
* in Composer Rest Server middleware pattern frontend is developed using web technologies (AngularJS, ReactJS etc). It is a WebApp interacting witht he Composer RestServer backend. the WebApp can interact with 3rd party enterprise systems etc
* the only interesing part in this pattern for the course is how to consume the rest server api from a frontend app
* Rest server must be secured
	* HTTPS
	* Authentication (PassengerJS)
	* Must work in Multi-user mode
* In custom middleware pattern the midtier is custom app
	* if the custom app exposes CRUD operations to resources through its API it might lead to inconsistencies in the BNapp
	* exposing a rest api to the users creates security issues
	* card management is a challenge (in composer Rest server middleware cards are managed there. with the custom middleware we have the option of storing users cards on their filesystem or in the suctom middleware app)
	* a custom middleware is typically built in node using the Composer API SDK
* In hybrid middleware pattern
	* the frontend never connects directly to the rest server. the wqeb app connects to the REST Server (loopback connector). the rest server can be in the enterprise network secured by firewalls.
	* Pros: More secure architecture, simplified middle tier
	* Cons: no moving parts, multi user mode still needed
* In desktop application pattern:
	* the app is installed on users machine and it connects to the BNApp directly using the Composer API (Fabric runtime)
	* Pros: secure, trust, cards managed on users machine
	* Cons: app distribution 
	* typically it will be an ElectronJS app using JS to consume the API easily
* How to decide on the best pattern to use.
	* Requirements, User needs
	* End user, audience 
	* Security & trust criteria

### Lecture 85 - Securing the REST server with Authentication Strategy

* Securing the Composer REST Server:
	* Enable HTTPS
	* Enable authentication on RERST Server (passportJS)
* Passport Auth Strategies are 300+ and  they are plugable modules.
* Most commonly used are OAuth2, SAML and LDAP
* There is also a Basic Auth Scheme and the Custom Auth Scheme. Basic is not recommended
* OAuth2 is most common auth strategy fro WebApps and REST API security
* OAuth2 Social Logic (Social media login) is not good as we have an Enterprise App to build
* OAuth2 can use an Enterprise Identity Provider
* OAuth2 strategy flow:
	* User uses the app to connect to REST Server
	* First call gets rejected and app redirects to LoginPAge (Auth page)
	* Auth page will make an auth request to the IdentityProvider
	* IdentityProvider upos successful signin or signup issues an access token to the App
	* the token is added to requests to REST API which then get validated with passport runtime. if OK access to Fabric API is granted
* LDAP strategy flow:
	* User provides credentials to the App
	* credential are passed to teh REST server
	* Rest server passes credentials to passport runtime
	* Passport connects to LDAP server to validate credentials
	* It passes back a user profile obj to rest server
	* Rest server manages the user profile obj to the session store (DB)
	* Any api call from user gets validated from session store. if session is valid. req will go to fabric api

### Lecture 86 - Walkthrough: Applying OAuth2.0 Authentication Strategy to REST Server

* the code that shows how to setup composer REST server for Auth and multi-user mode is in '/HLF_UI_Development/bin/rs-auth-github.sh'
* With OAuth2 + Github login wthe OAuth2 strategy is implemented. The login page is in GIthub and identity provider is Github
* To setup OAuth2 for social authentication
	* install the strategy package `npm install -g passport-github`
	* register fror oAuth2.0 on github.com
	* setup REST server launch script
	* execute the launch script from command line

* step2: login to github => settings => developer settings => register a new oauth app => give a name => give url 'http://localhost:3000/' => desc => provide callback url 'http://localhost:3000/auth/github/callback' => register app. => we get a client id and client secret
* Step 3: 
	* rest server is a CLI tool accepting options to control runtime behaviour. we have seen -c (card) -n (always | never) -w (true|false) -p (port)
	* rest server can be initialized more easily with ENv variables passed in afile which replace the options. e.g 'COMPOSER_CARD' 'COMPOSER_NAMESPACES' 'COMPOSER_AUTHENTICATION'
	* the environment variables for passport strategy are passed as 'COMPSOER_PROVIDERS' and a re passed as JSON formatted string, this is the place where we setup the keys (do not commit to github secrets). lso urls for auth flow are setup here
* our script will be
```
export COMPOSER_CARD=admin@airlinev9
export COMPOSER_NAMESPACES=never
export COMPOSER_AUTHENTICATION=true
export COMPOSER_PROVIDERS='{
  "github": {
    "provider": "github",
    "module": "passport-github",
    "clientID": "GITHUB CLIENT ID",
    "clientSecret": "GITHUB CLIENT SECRET",
    "authPath": "/auth/github",
    "callbackURL": "/auth/github/callback",
    "successRedirect": "/",
    "failureRedirect": "/"
  }
}'
composer-rest-server
```
* composer rest server is implemented using the loopback.io framewoirk. an easy way fro apps to expose their resources as REST APIs. the json format is dictated by loopback .io
* STEP4: make script executable and laucn it (launvh fabric first...)
* if we try to use ti we get 401 error (auth required) so we hit the auth url to login
* we get authorized and beignredirected with a token. token will be included in each call
* IT WORKS

### Lecture 87 - Working of Multi User Enabled REST Server

* REST Server supports Multi-User Setup beacuse it must support multiple users of the BNApp. all these users by default will use the common identity to hit the Fabric API throught the COmposer REST Server. SAme Idneity is used for transactions of ALL USERS...
* This is very very bad practice
* To solve this issue Composer REST Server associates Identitites (Cards) with authenticated users
* A Launch Identity with elevated rights is used to launch the server
* After laucn there is a wallet managed per user on the rest server
* Everytime a user executes a transaction his card is used to sign the transaction to Fabric API
* REST server needs persistent storage to manage the users cards. any NoSQL DB will do (preferably Couchbase and MongoDB). DB is connected using a loopback connector
* When a multi-user rest server is startted it exposes a wallet api
* users can use the api to upload their cards to the REST server
* Rest server insertts the cards to the DB to a users wallet/card
* When an authenticated user invokes an API call on the server. the server gets the users card from storage and signs it and sends the transaction to fabric
* In this pattern cards are maintained ina DB.. so this is a signle point of failure. REST Server must be protected with all means. same holds to DB

#### Lecture 88 -  Walkthrough - REST Server Multi User mode

* script '/HLF_UI_Development/bin/rs-multi-user.sh' shows how to setup REST server ffor multi-user mode. combined with the oath setyup script is a complete solution for securing and making rest server usable for an app
* To setup multi-user we follow 4 steps
	* 1.Eanble AUTH on REST Server (Done)
	* 2.Setup peristent storage for wallet maangement, install loopback DB Connector module
	* 3.Extend launch script to enable multi user mode
	* 4.setup an identity on BNApp to match the OAuth identity
* For step 2 we use mlab. we setup a sandbox db (restauth) and add a user and cp the mongo connection script. we install the loopback connector for mongodb `npm install -g loopback-connector-mongodb`
* For step 3 we extend the launch sript of rest server
	* add `export COMPOSER_MULTIUSER=true`
	* add env variables for datasources (use a JSON string dictated by loopback connector to mongodb) using credntials from mlab
```
export COMPOSER_DATASOURCES='{
    "db": {
        "name": "db",
        
        "host": "HOST NAME",
        "port": PORT NUMBER,
       
        "database": "restauth",

        "user": "test",
        "password": "test",

        "connector": "mongodb"  
    }
}'
```
* we launch rest server. we see one omore endpoint for wallet. user will use it to upload whis card
* we need to add the user to to BNAPp
```
composer participant add -d '{"$class":"org.acme.airline.participant.ACMENetworkAdmin","participantKey":"acloudfan","contact":{"$class":"org.acme.airline.participant.Contact","fName":"a","lname":"f","email":"acloudfan@acmeairline.com"}}' -c admin@airlinev9

```
* we issue the identity `composer identity issue -u acloudfan  -a org.acme.airline.participant.ACMENetworkAdmin#acloudfan -c admin@airlinev9`
* the genrated card we will upload to the restserver
* we authenticate first. we get 500 error when trying to access fabric
* we import the card file with wallet post endpoint. the name we provide must match the card name
* we peek into mongodb to see the collenctions added

### Assignment 2: Create the Design Blueprint for the Fabric Application UI

* Background: The application is a open marketplace where users will be able to buy and sell securities. Generally such users do not trust any application with their personal information and credentials.
* Characteristics of the application: 
	* This application will be used by users in the public domain
	* Chief architect has determined that adoption of the application would depend on the: Ease of use, Level of trust on the application
	* Users will be able to review historical reports 
	* Users would like to manage their preferences so that application will show what they prefer
	* Users are not tech savvy
	* A good to have feature will be Push notifications on users devices
* Your Task
	* Design the application keeping in mind all of the requirements.
	* Make as many assumptions as you want as the application design is in early phases.
* Questions for this Assignment
*	Which pattern did you use?  Why? PS: If its a new pattern, then please describe
	* Which pattern do you think is least suitable?  Why?
	* Do you think users will trust the application built with your design?  Why?
	* Which technologies would you use?
	* Where would you manage the user preferences?
	* How would you serve the historical reports?	Hint: Historical reports from Fabric * transaction perspective is just one type of report
	* Bonus question: How do you think the Push notification can be built?*

## Section 13 - ACME Airline Rewards Initiative

### Assignment 3: Model Development: ACME Airline Rewards Application

**Partner Rewards** 

* ACME already has a system in place to reward its Partners. Rewards are based on the business that partners bring to ACME airline. Here is how it works:
* Partners such as Expedia/Travelocity sell ACME air tickets on their website. When the customer buys the ticket from these websites, Partners earn:
	* Commissions
	* Reward points
* Partners can use the reward points to give discounts to their customer or to keep the discounts for themselves.
* The big challenge with the rewards system is that it is not transparent & partners are not very excited to earn or use them.

**ACME Rewards Research**

* Recently ACME team did some research on how to motivate partners to sell ACME airlines tickets to customers. What they found out is that they could benefit from their Reward system if they could make it transparent & flexible.
* Business team has decided to revamp the entire reward system. They have decided to make it extensible and flexible. Here is what they are looking for the technology team to implement:
	* Transparency in terms of rewards earned by the partner
		* Reward points will be allocated by the accounting department
		* Every time account system receives payment from Partner it would allot appropriate number of reward points to the partner
	* Partners can redeem reward points for cash 
		* Business rules can be decided by you. Each 25 reward points is $1
	* Cash transfer mechanism will be triggered off the chain
	* Partners can spend reward points to carry out business among themselves
		* Lets say there is a partner A and Partner B
		* Partner A is a travel agent and has 1000 reward points
		* Partner B is a B2B Airlines Partner 
		* Partner A can buy Partner B's services using the ACME Reward points
	* Business team is very confident and sees a reward system as new opportunity to promote its brand in the industry. The long term vision is that once the ACME reward system becomes popular, it will be opened to:

	* Customers: In direct partners e.g., hotel Reward points will become a value token and the ecosystem will help ACME to expand its reach to a larger base of loyal customers and partners !!!

**ACME Rewards Implementation**

* You are the Lead technologist for this project. Your decision will be final but you have been told that you need to build the system with following specifications:
* Technology:
	* Use Hyperledger Fabric
	* Use the composer framework
* Model Specs:
	* Model: Define appropriate set of participants
	* Model: Define appropriate set of assets
	* Model: Event is emitted every time rewards are (a) redeemed (b) allocated (c) transferred
	* Model: Transactions for allocating - only accounting will be able to execute, transfer of points can be done by Partner A to Partner B, 
	* Model: Queries e.g., Partners should be able to query there balance, transactions etc
* Model Access Control:
	* Model the access control based on the participants

**Guildelines**

* You are the final owner -  so feel free to make decisions
* There is no right or wrong way
* In this part you do not have to code
* Get the model reviewed from other students and the instructor BEFORE starting the coding

**Questions for this Assignment**

* Did you model the reward point as an asset? If yes why? If no why?
	* Reward points are like value tokens. If in your model each reward point is trackable then it is suggested that you create the reward point as an asset. If this strategy is applied then you would need to assign unique identity to each token.
	* Otherwise a reward point can just be a number that gets added to (or subtracted from) account balance for the partner.
* How many roles/participant types did you design?  In bullet-points describe the permissions for each role.
	* Network administrator: Manage the application. Create new participants & Id
	* Accounting department participant: Credit member accounts with reward points. Run reports on reward points
	* Rewards Participant: Query the reward points. Transfer their reward points to other partners. Redeem their reward points for Acme Airline payments

# Course 2 - Tutorial: Set up Multi Org Hyperledger Fabric Network

## Section 1 - Introduction

### Lecture 2 - Pre-Requisites for the course

* Basic Understanding of HL Fabric components
* Comforable with Bash scripting
* Dev machine (8gb ram)
* Fabric Workbench installation
	* Directly on Host (Ubuntu 16.0.4 LTS)
	* On VM (Ubuntu VM)
* Better use VM (portability)

## Section 2 - Case Study & Fabric Workbench Setup

### Lecture 5 - Say Hello to Acme Airline

* ACME Airlines built several BNapps on Hyperledger Fabric.
* Developers used single org dev environment
* Pilot was lauched and well received.
* Good news: 
	* A consortium of airlines was formed on exploring BNapps and blockchain potential (ACME AIRlines & Budger AIR)
* Bad news:
	* a lot of audience not convinced (pilot on dev env. can it scale on real world?)
* Our Task: 
	* Prove that ACME DLT apps will work on a real distributed cloud setup
	* setup a demo to show how apps will work on a multi-org & multi-machine fabric structure
* Our decision: Use HL Fabric Workbench to setup the Fabric on the Cloud

### Lecture 6 - Fabric Workbench Overview

* Fabric Workbench
	* a collection of task automation scripts
	* configurations files for various components
	* utilities and tools
	* ready to use fabric setups (single | multi | cloud)
* Created by tutor to help students accelarate learning & experimentation
	* To learn about HL Architecture components
	* Test out & experiments with the configurations & code
	* Design fabric infrastracture for your PoC/Apps
	* Adress challenges with Composer Apps
* If we have setup Fabric using the official tutorial (we have done it in Course 1) we have done it with docker setup. this is the default way to start with fabric
* Docker hides a lot of underlying details on binaries and configuration that we have to understand to setup fabric infra on our own
* With workbench we will work directly with native components instead of docker images
* We will use shell scripts for common tasks automation
* Workbench provides ready-to-use configurations
* To use the Workbench we must be experienced with the Fabric dev environment
* Workbench 
	* does not have components for chaincode development
	* does not create production ready infrastructure setup 
	* no support for config updates to the network

### Lecture 7 - Setup Visual Studio Code

* set auto save: file => autho save
* install extensions: vagrant, go, yaml support, docker

### Lecture 8 - Hypervisor, Virtualization & Vagrant

* we use vm setup of Oracle VMbox + Vagrant
* Virtualization is software simulation of the physical hw
* On physical machine sits hypervisor and on it the VMs
* Our hypervisor of choice is Oracle VirtualBox. alternatives are:
	* VMware vmsphere
	* Windows hyper-v
	* Redhat enterprise virtualization
	* kvm
	* xenserver
* we have it
* Vagrant a cli tool for managing vms. we have it
* varant reads the vagrant file (config) => creates a vm using hypervisor => a new vm is created

### Lecture 10 - Fabric workbench Project Setup

* we have dowloaded the Project repo 'HLF-Workbench-v1.4-01' in /courseRepo
* repository updated when new versions come. reinstallation of tools might be needed. code changes happen
* in the repo (where vagrantfile is) we run `vagrant up` and to login we run `vagrant ssh`
* in vm we will install
	* docker
	* fabric binaries
	* ca server
* we will install them using scripts in /vagrant/setup
	* `cd vagrant/setup`
	* `chmod 755 *.sh`
	* install docker on vm `sudo ./docker.sh` => logout => login => check installation `docker version`
	* install fabric binaries `sudo ./fabric-setup.sh`
	* check successful installation of orderer `orderer version` and peer `peer version`
	* install fabric ca server binary `sudo ./caserver-setup.sh` and check ca server and client  version `fabric-ca-server version` and `fabric-ca-client version`

### Lecture 11 - Fabric Workbench Walk through

* Workbench walkthrough
	* workbench folder overview
	* launch multi-org test setup
	* cleanup test set-ups
* HLF-Workbench has multiple folders
	* 'bin' has fabric binaries installed witht he scripts
	* 