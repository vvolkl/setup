export FCCPATH=/opt/fcc
export LCGPATH=/opt/fcc
thisdir=$PWD
cd /opt/fcc




export PODIO=/opt/fcc


export BINARY_TAG=x86_64-ubuntu1804-gcc7-opt

# echo "Set Library Path..."
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:$LCGPATH
export PATH=$PATH:$LCGPATH/bin/:$LCGPATH/scripts
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LCGPATH/lib
export PYTHONPATH=$PYTHONPATH:$LCGPATH/python:$LCGPATH/lib
export FCCPLOTS=$HOME/Plots

export PYTHIA8_DIR=$LCGPATH
export PYTHIA8_XML=$LCGPATH/share/Pythia8/xmldoc
export PYTHIA8DATA=$PYTHIA8_XML
export HEPMC_PREFIX=$LCGPATH

geant4_envbindir=$LCGPATH/bin
export G4NEUTRONHPDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4NDL4.5 > /dev/null ; pwd`"
export G4LEDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4EMLOW7.3 > /dev/null ; pwd`"
export G4LEVELGAMMADATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/PhotonEvaporation5.2 > /dev/null ; pwd`"
export G4RADIOACTIVEDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/RadioactiveDecay5.2 > /dev/null ; pwd`"
export G4NEUTRONXSDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4NEUTRONXS1.4 > /dev/null ; pwd`"
export G4PIIDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4PII1.3 > /dev/null ; pwd`"
export G4REALSURFACEDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/RealSurface2.1.1 > /dev/null ; pwd`"
export G4SAIDXSDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4SAIDDATA1.1 > /dev/null ; pwd`"
export G4ABLADATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4ABLA3.1 > /dev/null ; pwd`"
export G4ENSDFSTATEDATA="`cd $geant4_envbindir/../share/Geant4-10.4.2/data/G4ENSDFSTATE2.2 > /dev/null ; pwd`"


export DD4hepINSTALL=${LCGPATH};
export DD4hep_DIR=${LCGPATH};
export DD4hep_ROOT=${LCGPATH};




export ROOT_INCLUDE_PATH=$LCGPATH/include:$LCGPATH/include/datamodel

cd $thisdir
