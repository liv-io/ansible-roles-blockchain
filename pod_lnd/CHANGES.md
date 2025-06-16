# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.19.1-beta-1 (2025-06-16)

### Features

- Update pod_lnd_lnd_version to 0.19.1-beta-1

## 0.19.0-beta-1 (2025-05-22)

### Features

- Update pod_lnd_lnd_version to 0.19.0-beta-1

## 1.0.4 (2025-02-12)

### Enhancements

- Update pod_lnd_lnd_version to 0.18.5-beta-1

## 1.0.3 (2024-12-19)

### Bugs

- Update pod_lnd_lnd_version to 0.18.4-beta-1

## 1.0.2 (2024-10-25)

### Enhancements

- Increase service start and stop timeout

## 1.0.1 (2024-10-14)

### Enhancements

- Enclose environment variable value in single quotes

## 1.0.0 (2024-10-06)

### Changes

- Remove parameter `pod_lnd_lnd_alias`
- Remove parameter `pod_lnd_lnd_bitcoin_network`
- Remove parameter `pod_lnd_lnd_bitcoin_node`
- Remove parameter `pod_lnd_lnd_bitcoind_estimatemode`
- Remove parameter `pod_lnd_lnd_bitcoind_rpchost`
- Remove parameter `pod_lnd_lnd_bitcoind_rpcpass`
- Remove parameter `pod_lnd_lnd_bitcoind_rpcuser`
- Remove parameter `pod_lnd_lnd_bitcoind_zmqpubrawblock`
- Remove parameter `pod_lnd_lnd_bitcoind_zmqpubrawtx`
- Remove parameter `pod_lnd_lnd_color`
- Remove parameter `pod_lnd_lnd_externalip`
- Remove parameter `pod_lnd_lnd_listen`
- Remove parameter `pod_lnd_lnd_lnddir`
- Remove parameter `pod_lnd_lnd_restlisten`
- Remove parameter `pod_lnd_lnd_rpclisten`

### Features

- Add parameter `pod_lnd_lnd_environment_variables`

## 0.4.3 (2024-09-16)

### Bugs

- Update pod_lnd_lnd_version to 0.18.3-beta-1

## 0.4.2 (2024-07-09)

### Bugs

- Update pod_lnd_lnd_version to 0.18.2-beta-1

## 0.4.1 (2024-06-28)

### Bugs

- Update pod_lnd_lnd_version to 0.18.1-beta-1

## 0.4.0 (2024-05-31)

### Features

- Update pod_lnd_lnd_version to 0.18.0-beta-1

## 0.3.0 (2024-04-23)

### Changes

- Run Podman containers in rootful mode (permission denied issues in rootless mode)

## 0.2.5 (2024-04-23)

### Bugs

- Update pod_lnd_lnd_version to 0.17.5-beta-1

## 0.2.4 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.2.3 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.2.2 (2024-02-08)

### Bugs

- Update pod_lnd_lnd_version to 0.17.4-beta-1

## 0.2.1 (2024-02-01)

### Enhancements

- Explicitly use `podman pod` command

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_lnd_nftables_filter_rule`
- Add parameter `pod_lnd_nftables_state`

## 0.1.3 (2024-01-24)

### Enhancements

- Update pod_lnd_lnd_version to 0.17.3-beta-3

## 0.1.2 (2024-01-22)

### Changes

- Update pod_lnd_lnd_version to 0.17.3-beta-2

## 0.1.1 (2024-01-22)

### Enhancements

- Remove parameters `pod_lnd_lnd_bitcoind_dir`, `pod_lnd_lnd_btcd_dir`, `pod_lnd_lnd_datadir`, `pod_lnd_lnd_letsencryptdir`, `pod_lnd_lnd_logdir`

## 0.1.0 (2024-01-15)

### Features

- Initial release
