yum install https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm
yum install -y cvmfs cvmfs-config-default
cvmfs_config setup

 sh -c 'echo "CVMFS_REPOSITORIES=sft.cern.ch" >  /etc/cvmfs/default.local'
 sh -c 'echo CVMFS_HTTP_PROXY="http://ca-proxy.cern.ch:3128" >>  /etc/cvmfs/default.local'

cvmfs_config probe
