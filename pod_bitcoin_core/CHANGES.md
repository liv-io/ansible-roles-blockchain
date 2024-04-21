# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.5.0 (2024-04-21)

### Features

- Update pod_bitcoin_core_bitcoin_core_version from 26.1-1 to 27.0-1

## 0.4.0 (2024-04-02)

### Enhancements

- Update pod_bitcoin_core_bitcoin_core_version from 26.0-5 to 26.1-1

## 0.3.0 (2024-03-24)

### Features

- Add parameter `pod_bitcoin_core_bitcoin_core_maxuploadtarget`
- Update pod_bitcoin_core_bitcoin_core_version from 26.0-4 to 26.0-5

## 0.2.4 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.2.3 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.2.2 (2024-02-01)

### Enhancements

- Explicitly use `podman pod` command

## 0.2.1 (2024-01-31)

### Bugs

- Update pod_bitcoin_core_bitcoin_core_version from 26.0-3 to 26.0-4

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_bitcoin_core_nftables_filter_rule`
- Add parameter `pod_bitcoin_core_nftables_state`

## 0.1.4 (2024-01-24)

### Enhancements

- Update pod_bitcoin_core_bitcoin_core_version from 26.0-2 to 26.0-3

## 0.1.3 (2024-01-15)

### Enhancements

- Update pod_bitcoin_core_bitcoin_core_version from 26.0-1 to 26.0-2

## 0.1.2 (2024-01-09)

### Bugs

- Add default value for parameter `pod_bitcoin_core_bitcoin_core_version`

## 0.1.1 (2024-01-09)

### Bugs

- Correct the pod app label and user comment

## 0.1.0 (2024-01-08)

### Features

- Initial release
