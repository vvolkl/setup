sudo apt-get install -y lsb-release
wget https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest_all.deb
sudo dpkg -i cvmfs-release-latest_all.deb
rm -f cvmfs-release-latest_all.deb
sudo apt-get update
sudo apt install -y cvmfs cvmfs-config-default
sudo cvmfs_config setup

sudo sh -c 'echo "CVMFS_REPOSITORIES=sft.cern.ch" >  /etc/cvmfs/default.local'
sudo sh -c 'echo CVMFS_HTTP_PROXY="http://ca-proxy.cern.ch:3128" >>  /etc/cvmfs/default.local'

cvmfs_config probe
