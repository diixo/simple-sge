#!/bin/bash
cd $HOME

# finalize
if [ -z "$1" ]; then
    exec /bin/bash
else
    exec "$@"
fi
