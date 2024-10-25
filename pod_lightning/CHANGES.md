# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.0.3 (2024-10-25)

### Enhancements

- Increase service start and stop timeout

## 1.0.2 (2024-10-20)

### Bugs

- Update pod_lightning_lightning_version from 24.05-2 to 24.08.2-1

## 1.0.1 (2024-10-14)

### Enhancements

- Enclose environment variable value in single quotes

## 1.0.0 (2024-10-06)

### Changes

- Remove parameter `pod_lightning_lightning_addr`
- Remove parameter `pod_lightning_lightning_alias`
- Remove parameter `pod_lightning_lightning_announce_addr`
- Remove parameter `pod_lightning_lightning_announce_addr_discovered`
- Remove parameter `pod_lightning_lightning_announce_addr_discovered_port`
- Remove parameter `pod_lightning_lightning_autolisten`
- Remove parameter `pod_lightning_lightning_bind_addr`
- Remove parameter `pod_lightning_lightning_bitcoin_cli`
- Remove parameter `pod_lightning_lightning_bitcoin_datadir`
- Remove parameter `pod_lightning_lightning_bitcoin_rpcconnect`
- Remove parameter `pod_lightning_lightning_bitcoin_rpcpassword`
- Remove parameter `pod_lightning_lightning_bitcoin_rpcport`
- Remove parameter `pod_lightning_lightning_bitcoin_rpcuser`
- Remove parameter `pod_lightning_lightning_lightning_dir`
- Remove parameter `pod_lightning_lightning_log_level`
- Remove parameter `pod_lightning_lightning_log_timestamps`
- Remove parameter `pod_lightning_lightning_network`
- Remove parameter `pod_lightning_lightning_rgb`

### Features

- Add parameter `pod_lightning_lightning_environment_variables`

## 0.3.2 (2024-06-18)

### Enhancements

- Update pod_lightning_lightning_version from 24.05-1 to 24.05-2

## 0.3.1 (2024-06-09)

### Enhancements

- Update pod_lightning_lightning_version from 24.02.2-1 to 24.05-1

## 0.3.0 (2024-04-23)

### Changes

- Run Podman containers in rootful mode (permission denied issues in rootless mode)

## 0.2.5 (2024-04-07)

### Bugs

- Update pod_lightning_lightning_version from 24.02.1-1 to 24.02.2-1

## 0.2.4 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.2.3 (2024-03-15)

### Bugs

- Update pod_lightning_lightning_version from 23.11.2-2 to 24.02.1-1

## 0.2.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.2.1 (2024-02-01)

### Enhancements

- Explicitly use `podman pod` command

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_lightning_nftables_filter_rule`
- Add parameter `pod_lightning_nftables_state`

## 0.1.1 (2024-01-24)

### Enhancements

- Update pod_lightning_lightning_version from 23.11.2-1 to 23.11.2-2

## 0.1.0 (2024-01-19)

### Features

- Initial release
