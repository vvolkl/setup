export FCCPATH=/opt/fcc
export LCGPATH=/opt/fcc
thisdir=$PWD
cd /opt/fcc
source bin/thisroot.sh
source bin/geant4.sh
source bin/thisdd4hep_only.sh





export PODIO=/opt/fcc


export BINARY_TAG=x86_64-ubuntu1804-gcc8-opt

# echo "Set Library Path..."
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:$LCGPATH
export PATH=$PATH:$LCGPATH/bin/:$LCGPATH/scripts
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LCGPATH/lib
export PYTHONPATH=$PYTHONPATH:$LCGPATH/python
export FCCPLOTS=$HOME/Plots

export PYTHIA8_DIR=$LCGPATH
export PYTHIA8_XML=$LCGPATH/share/Pythia8/xmldoc
export PYTHIA8DATA=$PYTHIA8_XML
export HEPMC_PREFIX=$LCGPATH

export ROOT_INCLUDE_PATH=$LCGPATH/include:$LCGPATH/include/datamodel

cd $thisdir
