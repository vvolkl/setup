export CURDIR=$PWD
cd $HOME/Downloads/root
source bin/thisroot.sh

# echo "Set Library Path..."
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/FCC/fcc-edm/install/lib:$HOME/FCC/podio/install/lib


export PYTHONPATH=$PYTHONPATH:$HOME/FCC/podio/python

cd $CURDIR
