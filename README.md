## Dogechain Cluster Test Environment

This is a test environment for Dogechain clusters. It is based on the [Docker](https://www.docker.com/) container system.

### Requirements

* [Docker](https://www.docker.com/)
* Dogechain binaries in the `bin` directory

> Note: This compose file use bridge network, test in Linux only.
> Mac OS X and Windows users should use [Docker Toolbox](https://www.docker.com/products/docker-toolbox) instead.
> default data directory user id is 1000, so you need to change the user id in the docker-compose.yml file.

### Usage

```
    $ docker-compose up
    # or new compose plugin
    $ docker compose up
```

### IP Addresses

Dogechain nodes

- 10.5.0.11 # node01 validator
- 10.5.0.12 # node02 validator
- 10.5.0.13 # node03 validator
- 10.5.0.14 # node04 validator
- 10.5.0.15 # node05 rpc
- 10.5.2.1  # prometheus node

### Test scripts

- `create-genesis.sh` creates a genesis json file
- `add_delay_tcp.sh` adds a delay of 1000ms to all TCP connections
- `remove_delay_tcp.sh` removes the delay from all TCP connections
- `reset_tcp.sh` randomly resets TCP connections
