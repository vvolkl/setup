export FCCPATH=$HOME/FCC
source /cvmfs/sft.cern.ch/lcg/views/LCG_93/x86_64-ubuntu1604-gcc54-opt/setup.sh 

add_to_path CMAKE_PREFIX_PATH $FCCPATH/install
add_to_path CMAKE_PREFIX_PATH $FCCPATH/Gaudi/InstallArea/x86_64-ubuntu1604-gcc54-opt/


export PODIO=$FCCPATH/install


export CMTPROJECTPATH=/cvmfs/sft.cern.ch/lcg/releases
export BINARY_TAG=x86_64-ubuntu1604-gcc54-opt

# echo "Set Library Path..."
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/FCC/install/lib:$HOME/FCC/install/lib


export PYTHONPATH=$PYTHONPATH:$HOME/FCC/podio/python:$HOME/FCC/tricktrack/install/lib

export FCCPLOTS=$HOME/cernbox/www/pileup/plots


