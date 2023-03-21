#!/usr/bin/env bash

toxiproxy-cli --host http://10.5.3.11:8474 toxic delete -n latency_inbound dogechain
toxiproxy-cli --host http://10.5.3.12:8474 toxic delete -n latency_inbound dogechain
toxiproxy-cli --host http://10.5.3.13:8474 toxic delete -n latency_inbound dogechain
toxiproxy-cli --host http://10.5.3.14:8474 toxic delete -n latency_inbound dogechain