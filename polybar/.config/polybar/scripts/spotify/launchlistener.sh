#!/usr/bin/env sh

dn=$(readlink -f $0)
dn=$(dirname $dn)

pushd $dn

pkill -f py_spotify_listener.py

/usr/bin/env python3 ./py_spotify_listener.py &

popd