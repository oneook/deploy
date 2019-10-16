#!/bin/bash
#by fyx
#centos compile py3

PY3_URL=https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tgz
PY3_DIR=/usr/local/python3
OS_BIN=/usr/bin

wget ${PY3_URL}
tar -xf Python-3.6.2.tgz
mkdir -p ${PY3_DIR}
yum -y install gcc* glibc*
./configure --prefix=${PY3_DIR}
make && make install
ln -s ${PY3_DIR}/bin/python3 ${OS_BIN}/python3
ln -s ${PY#_DIR}/bin/pip3 ${OS_BIN}/pip3
python3 -V
