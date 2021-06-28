#!/bin/bash
IPFS_SERVERS=("localhost") # An array of server(s) to pin the hash to
for hash in "$@" # Hashes as input arguments
do
    for IPFS_SERVER in ${IPFS_SERVERS[@]}
    do
        echo "Pinning '${hash}' to '${IPFS_SERVER}'"
        curl -s -X POST "http://${IPFS_SERVER}:5001/api/v0/pin/add?arg=${hash}"
    done
done
