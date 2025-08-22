# pod_kasvault

## Description

KasVault is a simple frontend interface for your Ledger device.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_kasvault
  vars:
    pod_kasvault_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_kasvault
  vars:
    pod_kasvault_state: 'enable'
    pod_kasvault_kasvault_version: 'ab0a74eff86d3ad9eee73940785c1b2b2b6afd99-2'
    pod_kasvault_proxy: 'http://proxy.example.com:3128'
    pod_kasvault_registry_address: 'registry.example.com'
    pod_kasvault_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_kasvault_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_kasvault
  vars:
    pod_kasvault_state: 'disable'
    pod_kasvault_kasvault_version: 'ab0a74eff86d3ad9eee73940785c1b2b2b6afd99-2'
    pod_kasvault_proxy: 'http://proxy.example.com:3128'
    pod_kasvault_registry_address: 'registry.example.com'
    pod_kasvault_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_kasvault_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_kasvault
  vars:
    pod_kasvault_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_kasvault
  vars:
    pod_kasvault_state: 'inactive'
```

## Parameters

### Role

`pod_kasvault_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`pod_kasvault_kasvault_environment_variables`

    Description: Define the kasvault environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    : {}
    Options    :
      Examples: {}
      None    : {}

`pod_kasvault_kasvault_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_kasvault_kasvault_version`

    Description: Define the pod_kasvault container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '6c8c5c19f6fef33436c8275e2ad1e7b782e2e7e9-1'
    Options    :
      Examples: ''

`pod_kasvault_log_driver`

    Description: Define the 'pod_kasvault_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_kasvault_monitor_monit_state`

    Description: Control the 'pod_kasvault_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_kasvault_nftables_filter_rule`

    Description: Define the 'pod_kasvault_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3000 counter accept comment "kasvault from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3000 counter accept comment "kasvault from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3000 counter accept comment "kasvault from internal private addresses"

`pod_kasvault_nftables_state`

    Description: Control the 'pod_kasvault_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_kasvault_proxy`

    Description: Define the 'pod_kasvault_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_kasvault_registry_address`

    Description: Define the 'pod_kasvault_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_kasvault_registry_password`

    Description: Define the 'pod_kasvault_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_kasvault_registry_username`

    Description: Define the 'pod_kasvault_registry_username' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user' | 'registry'

## Conflicts

## Dependencies

### Roles

`podman`

## Requirements

### Control Node

`ansible`

    Version: >= 2.15.0

### Managed Node

`python`

    Version: >= 3.10.0

## Support

### Operating Systems

`debian`

    Version: 12
    Version: 13
