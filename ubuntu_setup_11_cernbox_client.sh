
export VERSION=`lsb_release -rs`
# example: the command above will set 18.04 if you are on Bionic Beaver
wget -q -O- https://cernbox.cern.ch/cernbox/doc/Linux/repo/Ubuntu_${VERSION}/Release.key  | sudo apt-key add -
sudo sh -c "echo 'deb http://cernbox.cern.ch/cernbox/doc/Linux/repo/Ubuntu_${VERSION}/ /' > /etc/apt/sources.list.d/cernbox-client.list"
sudo apt-get update
sudo apt-get -y install cernbox-client
      
