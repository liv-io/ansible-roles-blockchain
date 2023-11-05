# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.17.0-beta-4 (2023-11-05)

### Enhancements

- Verify if required parameters have been defined

## 0.17.0-beta-3 (2023-11-05)

### Enhancements

- Remove duplicate `install` section in systemd service unit file

## 0.17.0-beta-2 (2023-10-14)

### Enhancements

- Minor Ansible style improvements

## 0.17.0-beta-1 (2023-10-10)

### Features

- Update to upstream release 0.17.0-beta-1

## 0.16.4-beta-3 (2023-08-19)

### Bugs

- Update monit tasks according to different states

### Features

- Add parameter `lnd_nftables_filter_rule`
- Add parameter `lnd_nftables_state`

## 0.16.4-beta-2 (2023-08-08)

### Changes

- Turn string state parameters into boolean

## 0.16.4-beta-1 (2023-07-08)

### Bugs

- Update to upstream release 0.16.4-beta

## 0.16.3-beta-3 (2023-07-08)

### Features

- Add support for Debian 12 (Bookworm)

## 0.16.3-beta-2 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 0.16.3-beta-1 (2023-06-06)

### Features

- Update to upstream release 0.16.3-beta

## 0.16.2-beta-1 (2023-04-29)

### Features

- Update to upstream release 0.16.2-beta

## 0.16.1-beta-1 (2023-04-24)

### Features

- Update to upstream release 0.16.1-beta

## 0.16.0-beta-2 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 0.16.0-beta-1 (2023-03-30)

### Features

- Update to upstream release 0.16.0-beta

## 0.15.5-beta-1 (2023-03-25)

### Enhancements

- Update to upstream release 0.15.5-beta

## 0.15.3-beta-2 (2022-11-27)

### Enhancements

- Improve include variables tasks

## 0.15.3-beta-1 (2022-10-18)

### Enhancements

- Update to upstream release 0.15.3-beta

## 0.15.0-beta-1 (2022-06-27)

### Features

- Update to upstream release 0.15.0-beta

## 0.14.3-beta-1 (2022-04-19)

### Enhancements

- Update to upstream release 0.14.3-beta

## 0.14.2-beta-1 (2022-02-04)

### Enhancements

- Update to upstream release 0.14.2-beta

## 0.14.1-beta-3 (2022-01-02)

### Bugs

- Fix `app.dir` path in removal task

## 0.14.1-beta-2 (2022-01-02)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.14.1-beta-1 (2021-11-25)

### Enhancements

- Update to upstream release 0.14.1-beta

## 0.14.0-beta-1 (2021-11-18)

### Features

- Update to upstream release 0.14.0-beta

## 0.13.4-beta-1 (2021-11-10)

### Enhancements

- Update to upstream release 0.13.4-beta

## 0.13.3-beta-1 (2021-10-11)

### Enhancements

- Update to upstream release 0.13.3-beta

## 0.13.1-beta-1 (2021-07-23)

### Features

- Update to upstream release 0.13.1-beta

## 0.12.1-beta-1 (2021-02-27)

### Features

- Update to upstream release 0.12.1-beta

## 0.11.1-beta-4 (2020-12-15)

### Changes

- Add support for Debian 10
- Drop support for CentOS 7, CentOS 8

## 0.11.1-beta-4 (2020-11-27)

### Features

- Add support for Monit service monitoring (`lnd_monitor_monit_state`)

## 0.11.1-beta-3 (2020-10-30)

### Enhancements

- Simplify Ansible file header (`ansible_managed`)

## 0.11.1-beta-2 (2020-10-30)

### Enhancements

- Simplify checksum verification

## 0.11.1-beta-1 (2020-10-11)

### Enhancements

- Update to upstream release 0.11.1-beta

## 0.11.0-beta-1 (2020-08-20)

### Enhancements

- Update to upstream release 0.11.0-beta

## 0.11.0-beta.rc2-1 (2020-08-13)

### Features

- Initial release
