# pod_kaspa_explorer

## Description

Kaspa-Explorer

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_kaspa_explorer
  vars:
    pod_kaspa_explorer_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_kaspa_explorer
  vars:
    pod_kaspa_explorer_state: 'enable'
    pod_kaspa_explorer_kaspa_explorer_version: 'b68585671577addcf6de48d84ea04d09503a9070-1'
    pod_kaspa_explorer_proxy: 'http://proxy.example.com:3128'
    pod_kaspa_explorer_registry_address: 'registry.example.com'
    pod_kaspa_explorer_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_kaspa_explorer_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_kaspa_explorer
  vars:
    pod_kaspa_explorer_state: 'disable'
    pod_kaspa_explorer_kaspa_explorer_version: 'b68585671577addcf6de48d84ea04d09503a9070-1'
    pod_kaspa_explorer_proxy: 'http://proxy.example.com:3128'
    pod_kaspa_explorer_registry_address: 'registry.example.com'
    pod_kaspa_explorer_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_kaspa_explorer_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_kaspa_explorer
  vars:
    pod_kaspa_explorer_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_kaspa_explorer
  vars:
    pod_kaspa_explorer_state: 'inactive'
```

## Parameters

### Role

`pod_kaspa_explorer_state`

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

`pod_kaspa_explorer_kaspa_explorer_environment_variables`

    Description: Define the kaspa_explorer environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    : {}
    Options    :
      Examples: {}
      None    : {}

`pod_kaspa_explorer_kaspa_explorer_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_kaspa_explorer_kaspa_explorer_version`

    Description: Define the pod_kaspa_explorer container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '3254127d9e1346a0a2a4749cddb8aa6fc6aa2329-1'
    Options    :
      Examples: ''

`pod_kaspa_explorer_log_driver`

    Description: Define the 'pod_kaspa_explorer_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_kaspa_explorer_monitor_monit_state`

    Description: Control the 'pod_kaspa_explorer_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_kaspa_explorer_nftables_filter_rule`

    Description: Define the 'pod_kaspa_explorer_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3000 counter accept comment "kaspa_explorer from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3000 counter accept comment "kaspa_explorer from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3000 counter accept comment "kaspa_explorer from internal private addresses"

`pod_kaspa_explorer_nftables_state`

    Description: Control the 'pod_kaspa_explorer_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_kaspa_explorer_proxy`

    Description: Define the 'pod_kaspa_explorer_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_kaspa_explorer_registry_address`

    Description: Define the 'pod_kaspa_explorer_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_kaspa_explorer_registry_password`

    Description: Define the 'pod_kaspa_explorer_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_kaspa_explorer_registry_username`

    Description: Define the 'pod_kaspa_explorer_registry_username' option.
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

    Version: 11
    Version: 12
