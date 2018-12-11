sudo apt install curl
sudo sh -c 'echo "deb [arch=amd64] http://storage-ci.web.cern.ch/storage-ci/debian/xrootd/ bionic release" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb [arch=amd64] http://storage-ci.web.cern.ch/storage-ci/debian/eos/citrine/ bionic tag" >> /etc/apt/sources.list'
curl -sL http://storage-ci.web.cern.ch/storage-ci/storageci.key | sudo apt-key add -
sudo apt update
sudo apt install libcurl3
sudo apt install eos-client
