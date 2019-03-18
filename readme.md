# Udemy Course #1: Blockchain Development on Hyperledger Fabric using Composer

* [Course #1 Link](https://www.udemy.com/hyperledger/)
* [Course #1 Repo]()

# Udemy Course #2: Tutorial: Set up Multi Org Hyperledger Fabric Network

* [Course #2 Link](https://www.udemy.com/tutorial-hyperledger-setup/)
* [Course # 2 Repo]()

# Course 1 - Blockchain Development on Hyperledger Fabric using Composer

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
	* >4GB RAM
	* Mac OS 10.12
	* Ubuntu Linux 16.04 LTS
* Visual Studio Code for editor
* using docker extention and hyperledger composer extention for visual stodio code

### Lecture 12 - Composer Dev Tools Installation

* We will install Composer tools: CLI, Yo Generator, REST Server
* For ubuntu follow the [link](https://hyperledger.github.io/composer/latest/installing/installing-prereqs.html#ubuntu)
* we need node v8.x
* we need git v2.9 or higher
* we need python 2.7.x and add Python to PATH
* we need yeoman using node `npm install -g yo`
* we install composer cli `npm install -g composer cli` and verify with `composer -v`
* some packages might fail to install
* we need Composer REST server `npm install -g composer-rest-server` verify with `composer-rest-server -v`
* install the Yo Template for the Network App `npm install -g generator-hyperledger-composer` that creates a business network application sceleton. to verify installation use `yo --generators`
* we need the HL composer moddeling lang extention for vs code

### Lecture 14 - Install Docker or Docker Toolkit

* check installation `docker -v` v>17.3
* download docker CE stable

