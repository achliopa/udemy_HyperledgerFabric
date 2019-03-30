Environment Setup
=================

# Start the VM
> vagrant up
> vagrant ssh

> sudo ./docker.sh
  Logout of VM & Log back in
  Confirm is Docker is good
> docker ps

> sudo ./go.sh
  Logout of VM & Log back in
  
> sudo -E ./fabric-setup.sh
> sudo -E ./caserver-setup.sh




# Setup Docker
1. cd /vagrant/setup
2. sudo ./docker.sh
3. Logout and Log in to the Vagrant VM
4. docker version    <<This will show the version>>

# Setup GoLang
1. cd /vagrant/setup
2. sudo ./go.sh
3. Logout and Log in to the Vagrant VM
4. go version        <<This will show the version>>

# Setup fabric
1. cd /vagrant/setup
2. sudo -E ./fabric-setup.sh
3. orderer version
4. peer version
5. Creates the folders under the project root
    - fabric-samples
    - bin
    - gopath
    - node

# Setup CA Server
1. cd /vagrant/setup
2. sudo -E ./caserver-setup.sh
3. fabric-ca-sever   version
4. fabric-ca-client  version




Windows users:
==============
> vagrant ssh
> cd workspace
> mkdir   temp                   <<All commands for setup in this directory>>
