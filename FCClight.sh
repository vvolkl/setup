export FCCPATH=$HOME/FCC

add_to_path CMAKE_PREFIX_PATH $FCCPATH/podio/install_lwl
add_to_path CMAKE_PREFIX_PATH $FCCPATH/dag/install_lwl

source ~/Downloads/root/bin/thisroot.sh


export PODIO=$FCCPATH/podio/install_lwl



export BINARY_TAG=x86_64-ubuntu1604-gcc54-opt

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/FCC/fcc-edm/install_lwl/lib:$HOME/FCC/podio/install_lwl/lib


export PYTHONPATH=$PYTHONPATH:$HOME/FCC/podio/python
export FCCPLOTS=$HOME/cernbox/www/pileup/plots

