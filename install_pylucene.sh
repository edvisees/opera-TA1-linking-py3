#!/bin/bash -x
# create a conda env called linking which contains pylucene with python 3
conda create -n linking python=3.5
source activate linking
wget http://mirror.cc.columbia.edu/pub/software/apache/lucene/pylucene/pylucene-8.3.0-src.tar.gz
tar xzf pylucene-8.3.0-src.tar.gz
cd pylucene-8.3.0
pushd jcc
python setup.py build
python setup.py install
popd
# before make, vi Makefile to umcomment lines 70-74 and change the python path to conda envs python path
make
make install
source deactivate linking
