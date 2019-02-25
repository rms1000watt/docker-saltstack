# Docker Saltstack

## Introduction

Docker Compose setup to spin up a salt master and minions (This is a fork)

You can read a [full article describing how to use this setup](https://medium.com/@timlwhite/the-simplest-way-to-learn-saltstack-cd9f5edbc967).

## Contents

- [Usage](#usage)
- [References](#references)

## Usage

```bash
# Start master & 3 minions
docker-compose up -d

# Log into the master
docker-compose exec salt-master bash

# Run a ping command
salt '*' test.ping

# Check status of stat
salt '*' state.apply test=True

# Exit and shutdown
exit
docker-compose down
```

## References

- [The Salt Remote Execution Tutorial](https://docs.saltstack.com/en/latest/topics/tutorials/modules.html) has some quick examples of the comamnds you can run from the master.
