# Udemy Course #1: Blockchain Development on Hyperledger Fabric using Composer

* [Course #1 Link](https://www.udemy.com/hyperledger/)
* [Course #1 Repo](https://github.com/acloudfan/HLF-Vagrant-Dev-Setup)

# Udemy Course #2: Tutorial: Set up Multi Org Hyperledger Fabric Network

* [Course #2 Link](https://www.udemy.com/tutorial-hyperledger-setup/)
* [Course # 2 Repo]()

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

* 

### Lecture 60 - Queries

* 