
export LCGENV_PATH=/opt/lcg
export LCG_SYSTEM=x86_64-ubuntu1604-gcc53
export CMTCONFIG=$LCG_SYSTEM-opt
export CMTPROJECTPATH=/home/vavolkl/lcgcmake/cmake/toolchain

export CMAKE_PREFIX_PATH=$LCGENV_PATH/clhep/2.3.1.1/$CMTCONFIG:\
$LCGENV_PATH/HepPDT/2.06.01/$CMTCONFIG:\
$LCGENV_PATH/AIDA/3.2.1/$CMTCONFIG:\
$LCGENV_PATH/XercesC/3.1.1p1/$CMTCONFIG:\
$LCGENV_PATH/GSL/1.10/$CMTCONFIG:\
$LCGENV_PATH/RELAX/RELAX-root6/$CMTCONFIG:\
$LCGENV_PATH/libunwind/5c2cade/$CMTCONFIG:\
$LCGENV_PATH/qt5/5.4.1/$CMTCONFIG:\
$LCGENV_PATH/QMtest/2.4.1_python2.7/$CMTCONFIG:\
$LCGENV_PATH/ROOT/6.06.00/$CMTCONFIG:\
$LCGENV_PATH/Python/2.7.9.p1/$CMTCONFIG:\
$LCGENV_PATH/pytools/1.9_python2.7/$CMTCONFIG:\
$LCGENV_PATH/HepMC/2.06.09/$CMTCONFIG:\
$LCGENV_PATH/ROOT/6.06.00/$CMTCONFIG:\
$LCGENV_PATH/fastjet/3.1.1/$CMTCONFIG:\
$LCGENV_PATH/Geant4/10.02/$CMTCONFIG:\
$LCGENV_PATH/Boost/1.59.0_python2.7/$CMTCONFIG:\
$LCGENV_PATH/tbb/42_20140122/$CMTCONFIG:\
$LCGENV_PATH/CppUnit/1.12.1_p1/$CMTCONFIG:\
$LCGENV_PATH/MCGenerators/pythia8/212/$CMTCONFIG:\
$HOME/FCC/Gaudi/InstallArea/$CMTCONFIG:\
$HOME/FCC/Delphes-install:\
$HOME/FCC/podio/install:\
$HOME/FCC/podio/install/cmake:\
$HOME/FCC/fcc-edm/install:\
$HOME/FCC/DD4hep-install
echo "set CMAKE_PREFIX_Path"
echo $CMAKE_PREFIX_PATH



echo "Set up ROOT..."
cd $LCGENV_PATH/ROOT/6.06.00/$CMTCONFIG
source bin/thisroot.sh

echo "Set up GEANT..."
cd $LCGENV_PATH/Geant4/10.02/$CMTCONFIG
source bin/geant4.sh


echo "Set Library Path..."
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/FCC/fcc-edm/install/lib:$HOME/FCC/podio/install/lib:$HOME/FCC/DD4hep-install/lib:$HOME/FCC/FCCSW/build.$CMTCONFIG/lib

export PATH=$PATH:$HOME/FCC/DD4hep-install/bin

export DD4hep_DIR=$HOME/FCC/DD4hep-install/
export DD4hepINSTALL=$HOME/FCC/DD4hep-install/

export PYTHONPATH=$PYTHONPATH:$HOME/FCC/podio/python
#echo "Change to FCCSW source directory .."
#cd $HOME/FCC/FCCSW
cd $HOME/FCC/


