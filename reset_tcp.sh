#!/usr/bin/env bash
set -e -o pipefail

MAXWAIT=10
ENDPOINTS=(
    "http://10.5.3.11:8474"
    "http://10.5.3.12:8474"
    "http://10.5.3.13:8474"
    "http://10.5.3.14:8474"
)

while true; do
    sleep $((RANDOM % MAXWAIT))
    selected_endpoint=${ENDPOINTS[ $RANDOM % ${#ENDPOINTS[@]} ]}
    echo "Resetting connection to ${selected_endpoint}"

    toxiproxy-cli --host "${selected_endpoint}" toxic add -t reset_peer -n reset_inbound dogechain

    sleep 1

    toxiproxy-cli --host "${selected_endpoint}"  toxic delete -n reset_inbound dogechain
done
