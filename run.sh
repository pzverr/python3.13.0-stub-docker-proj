#!/bin/bash

# ./run.sh main.py

docker run -it \
    --rm \
    --name python3-stub \
    --volume $(pwd)/src:/application \
    --workdir /application \
    python3.13.0/stub \
    python3 $1
