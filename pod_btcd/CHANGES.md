# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.2.2 (2024-02-01)

### Enhancements

- Explicitly use `podman pod` command

## 0.2.1 (2024-01-31)

### Bugs

- Update pod_btcd_btcd_version from 0.24.0-9 to 0.24.0-10

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_btcd_nftables_filter_rule`
- Add parameter `pod_btcd_nftables_state`

## 0.1.3 (2024-01-24)

### Enhancements

- Update pod_btcd_btcd_version from 0.24.0-8 to 0.24.0-9

## 0.1.2 (2024-01-22)

### Enhancements

- Update pod_btcd_btcd_version from 0.24.0-6 to 0.24.0-8
- Remove parameters `pod_btcd_btcd_configfile`, `pod_btcd_btcd_datadir`, `pod_btcd_btcd_logdir`

## 0.1.1 (2024-01-15)

### Enhancements

- Update pod_btcd_btcd_version from 0.24.0-5 to 0.24.0-6

## 0.1.0 (2024-01-09)

### Features

- Initial release
