#! /bin/bash

function log() {
    logger -i -t randomly $1
}

log $RANDOM
log $RANDOM
log $RANDOM
