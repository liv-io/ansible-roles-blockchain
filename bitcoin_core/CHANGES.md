# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 25.0-3 (2023-07-08)

### Features

- Add support for Debian 12 (Bookworm)

## 25.0-2 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 25.0-1 (2023-05-27)

### Changes

- Update Bitcoin Core to version 25.0

### Enhancements

- Use upstream configuration file

## 24.1-1 (2023-05-18)

### Features

- Update Bitcoin Core to version 24.1

## 24.0.1-2 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 24.0.1-1 (2022-12-12)

### Bugs

- Update Bitcoin Core to version 24.0.1

## 24.0-2 (2022-11-27)

### Enhancements

- Improve include variables tasks

## 24.0-1 (2022-11-25)

### Features

- Update Bitcoin Core to version 24.0

## 23.0-1 (2022-04-25)

### Features

- Update Bitcoin Core to version 23.0

## 22.0-4 (2022-01-08)

### Enhancements

- Add `no_log` parameter to sensitive tasks

## 22.0-3 (2022-01-02)

### Bugs

- Fix `app.dir` path in removal task

## 22.0-2 (2022-01-02)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 22.0-1 (2021-09-16)

### Features

- Update Bitcoin Core to version 22.0

## 0.21.1-1 (2021-05-04)

### Features

- Update Bitcoin Core to version 0.21.1

## 0.21.0-1 (2021-01-15)

### Features

- Update Bitcoin Core to version 0.21.0

## 0.20.1-7 (2020-12-15)

### Changes

- Add support for Debian 10
- Drop support for CentOS 7, CentOS 8

## 0.20.1-6 (2020-11-27)

### Features

- Add support for Monit service monitoring (`bitcoin_core_monitor_monit_state`)

## 0.20.1-5 (2020-10-30)

### Enhancements

- Simplify Ansible file header (`ansible_managed`)

## 0.20.1-4 (2020-10-30)

### Enhancements

- Simplify checksum verification

## 0.20.1-3 (2020-08-13)

### Enhancements

- Minor role improvements

## 0.20.1-2 (2020-08-12)

### Changes

- Remove option ZeroMQ port parameter (`bitcoin_core_zeromq_port`)

### Features

- Add option ZeroMQ block hashes port (`bitcoin_core_zeromq_pub_hash_block_port`)
- Add option ZeroMQ transaction hashes (`bitcoin_core_zeromq_pub_hash_tx_port`)
- Add option ZeroMQ raw block hex (`bitcoin_core_zeromq_pub_raw_block_port`)
- Add option ZeroMQ raw transaction hex (`bitcoin_core_zeromq_pub_raw_tx_port`)

## 0.20.1-1 (2020-08-03)

### Changes

- Move configuration directory

### Enhancements

- Remove `common` role dependency

### Features

- Update Bitcoin Core to version 0.20.1

## 0.20.0-1 (2020-03-10)

### Enhancements

- Follow upstream versioning

### Features

- Update Bitcoin Core to version 0.20.0

## 0.19.1-1 (2020-03-10)

### Features

- Update Bitcoin Core to version 0.19.1

## 0.19.0.1-2 (2020-01-13)

### Features

- Add option to specify network bind address (`bitcoin_core_network_bind`)
- Add option to specify network port (`bitcoin_core_network_port`)
- Add option to specify RPC port (`bitcoin_core_rpc_port`)
- Add option to specify ZeroMQ bind address (`bitcoin_core_zeromq_bind`)
- Add option to specify ZeroMQ port (`bitcoin_core_zeromq_port`)

## 0.19.0.1-1 (2020-01-07)

### Features

- Initial release
