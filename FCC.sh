export FCCPATH=$HOME/FCC
source /cvmfs/sft.cern.ch/lcg/views/LCG_92/x86_64-ubuntu1604-gcc54-opt/setup.sh 

add_to_path CMAKE_PREFIX_PATH $FCCPATH/install
add_to_path CMAKE_PREFIX_PATH $FCCPATH/Gaudi/InstallArea/x86_64-ubuntu1604-gcc54-dbg/
add_to_path CMAKE_PREFIX_PATH /cvmfs/sft.cern.ch/lcg/releases/LCG_92/HepMC/2.06.09/x86_64-ubuntu1604-gcc54-opt


export PODIO=$FCCPATH/install


source /cvmfs/sft.cern.ch/lcg/views/LCG_92/x86_64-ubuntu1604-gcc54-opt/bin/thisdd4hep_only.sh 

export CMTPROJECTPATH=/cvmfs/sft.cern.ch/lcg/releases
export BINARY_TAG=x86_64-ubuntu1604-gcc54-opt

# echo "Set Library Path..."
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/FCC/fcc-edm/install/lib:$HOME/FCC/podio/install/lib


export PYTHONPATH=$PYTHONPATH:$HOME/FCC/podio/python
export FCCPLOTS=$HOME/cernbox/www/pileup/plots

cd $HOME/Repos/heppy
source init.sh
cd $CURDIR
