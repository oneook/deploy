#!/bin/bash
#by fyx
#centos compile py3

PY3_V=3.6.2
PY3_URL=https://www.python.org/ftp/python/${PY3_V}/Python-${PY3_V}.tgz
PY3_DIR=/usr/local/python3
OS_BIN=/usr/bin

wget ${PY3_URL}
tar -xf Python-${PY3_V}.tgz && cd Python-${PY3_V}
mkdir -p ${PY3_DIR}
yum -y install gcc* glibc*
./configure --prefix=${PY3_DIR}
make && make install
ln -s ${PY3_DIR}/bin/python3 ${OS_BIN}/python3
ln -s ${PY#_DIR}/bin/pip3 ${OS_BIN}/pip3
python3 -V
