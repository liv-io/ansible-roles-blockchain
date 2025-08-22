# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.0.1-2 (2025-08-22)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 1.0.1-1 (2025-07-01)

### Bugs

- Update pod_rusty_kaspa_rusty_kaspa_version from 1.0.0-1 to 1.0.1-1

## 1.0.0-1 (2025-04-01)

### Changes

- Update pod_rusty_kaspa_rusty_kaspa_version from 0.16.1-1 to 1.0.0-1
- Change versioning

## 0.5.1 (2025-03-04)

### Bugs

- Update pod_rusty_kaspa_rusty_kaspa_version from 0.16.0-1 to 0.16.1-1

## 0.5.0 (2025-01-29)

### Features

- Update pod_rusty_kaspa_rusty_kaspa_version from 0.15.2-1 to 0.16.0-1

## 0.4.0 (2025-01-26)

### Features

- Update pod_rusty_kaspa_rusty_kaspa_version from 0.14.1-2 to 0.15.2-1

## 0.3.2 (2024-10-25)

### Enhancements

- Increase service start and stop timeout

## 0.3.1 (2024-10-14)

### Enhancements

- Enclose environment variable value in single quotes

## 0.3.0 (2024-10-06)

### Changes

- Remove parameter `pod_rusty_kaspa_rusty_kaspa_addpeer`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_appdir`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_disable_upnp`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_externalip`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_listen`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_loglevel`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_nodnsseed`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_nogrpc`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_nologfiles`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_ram_scale`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_rpclisten`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_sanity`
- Remove parameter `pod_rusty_kaspa_rusty_kaspa_utxoindex`

### Features

- Add parameter `pod_rusty_kaspa_rusty_kaspa_environment_variables`

## 0.2.1 (2024-07-27)

### Bugs

- Add both ports to monit check

## 0.2.0 (2024-07-27)

### Bugs

- Add `/tmp/rusty-kaspa` directory to support read-only file system
- Add missing gRPC port

### Features

- Add parameter `pod_rusty_kaspa_rusty_kaspa_rpclisten`
- Update pod_rusty_kaspa_rusty_kaspa_version from 0.14.1-1 to 0.14.1-2

## 0.1.0 (2024-07-26)

### Features

- Initial release
