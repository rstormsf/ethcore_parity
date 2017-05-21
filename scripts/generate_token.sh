#!/bin/bash
echo "Content-type: text/html"
echo ""

export container_id=`docker ps --filter ancestor=ethcore/parity:nightly --format "{{.ID}}"`
export signer_token=`docker exec $container_id /parity/parity signer new-token --chain kovan --base-path /mnt/parity`

echo ""
echo "<html><head><title>Parity Signer Token</title></head><body>"
echo $signer_token | grep -o "token:.*"
echo "</body></html>