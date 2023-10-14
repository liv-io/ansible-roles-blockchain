# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.3.6-9 (2023-10-14)

### Enhancements

- Minor Ansible style improvements

## 0.3.6-8 (2023-08-19)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

### Features

- Add parameter `blockbook_nftables_filter_rule`
- Add parameter `blockbook_nftables_state`

## 0.3.6-7 (2023-08-08)

### Changes

- Turn string state parameters into boolean

## 0.3.6-6 (2023-07-08)

### Features

- Add support for Debian 12 (Bookworm)

## 0.3.6-5 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 0.3.6-4 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 0.3.6-3 (2022-11-27)

### Enhancements

- Improve include variables tasks

## 0.3.6-2 (2022-01-02)

### Changes

- Turn installation instructions into Ansible role

## 0.3.6-1 (2022-01-02)

### Features

- Initial release
