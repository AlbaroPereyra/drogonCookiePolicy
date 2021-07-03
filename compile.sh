#! /bin/sh -

dir=$(dirname $0);
projectName=${dir##*/};

cd build/;
cmake -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOPENSSL_LIBRARIES=/usr/local/opt/openssl/lib -DCMAKE_BUILD_TYPE=Release ..;
make;
./${projectName}
