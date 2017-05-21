#!/bin/bash
echo "Content-type: text/html"
echo ""

export container_id=`docker run -itd -v /root/.local/share/io.parity.ethereum/:/mnt/parity/ ethcore/parity:nightly --log-file /var/log/parity --logging trace --chain kovan --base-path /mnt/parity`
export signer_token=`docker exec $container_id /parity/parity signer new-token --chain kovan --base-path /mnt/parity`
export stop_result=`docker stop $container_id`
export remove_result=`docker rm $container_id`

echo ""
echo "<html><head><title>Parity Signer Token</title></head><body>"
echo $signer_token | grep -o "token:.*"
echo "</body></html>