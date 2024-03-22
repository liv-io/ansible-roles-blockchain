# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.2.4 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.2.3 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.2.2 (2024-02-08)

### Bugs

- Update pod_lnd_lnd_version from 0.17.3-beta-3 to 0.17.4-beta-1

## 0.2.1 (2024-02-01)

### Enhancements

- Explicitly use `podman pod` command

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_lnd_nftables_filter_rule`
- Add parameter `pod_lnd_nftables_state`

## 0.1.3 (2024-01-24)

### Enhancements

- Update pod_lnd_lnd_version from 0.17.3-beta-2 to 0.17.3-beta-3

## 0.1.2 (2024-01-22)

### Changes

- Update pod_lnd_lnd_version from 0.17.3-beta-1 to 0.17.3-beta-2

## 0.1.1 (2024-01-22)

### Enhancements

- Remove parameters `pod_lnd_lnd_bitcoind_dir`, `pod_lnd_lnd_btcd_dir`, `pod_lnd_lnd_datadir`, `pod_lnd_lnd_letsencryptdir`, `pod_lnd_lnd_logdir`

## 0.1.0 (2024-01-15)

### Features

- Initial release
