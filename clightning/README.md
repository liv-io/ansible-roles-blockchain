# fuse_overlayfs

## Description

This package provides an overlayfs FUSE implementation so that it can be used
since Linux 4.18 by unprivileged users in an user namespace.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

```
- hosts: all
  roles:
    - role: fuse_overlayfs
```

## Parameters

## Conflicts

### Roles

## Dependencies

### Packages

`fuse-overlayfs`

    Version: >= 1.0
    Name   :
      Ubuntu 22.04: fuse-overlayfs

### Roles

## Requirements

### Control Node

`ansible`

    Version: >= 2.8.0

### Managed Node

`python`

    Version: >= 2.7.0

## support

### Operating Systems

`ubuntu`

    Version: 22.04
