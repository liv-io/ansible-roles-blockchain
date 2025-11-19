# pod_lightning

## Description

Core Lightning — Lightning Network implementation focusing on spec compliance and performance

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_lightning
  vars:
    pod_lightning_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_lightning
  vars:
    pod_lightning_state: 'enable'
    pod_lightning_lightning_environment_variables:
      ALIAS: 'example.com'
      ANNOUNCE_ADDR: '5.6.7.8'
      ANNOUNCE_ADDR_DISCOVERED_PORT: '9735'
      BIND_ADDR: '0.0.0.0'
      BITCOIN_RPCCONNECT: '1.2.3.4'
      BITCOIN_RPCPASSWORD: '3cf83a6puhq4hqjr8f0re28dkpb8hqw5'
      BITCOIN_RPCPORT: '8332'
      BITCOIN_RPCUSER: 'satoshi'
      RGB: 'f2a900'
    pod_lightning_lightning_read_only_root_filesystem: True
    pod_lightning_lightning_version: '23.11.2-1'
    pod_lightning_proxy: 'http://proxy.example.com:3128'
    pod_lightning_registry_address: 'registry.example.com'
    pod_lightning_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_lightning_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_lightning
  vars:
    pod_lightning_state: 'disable'
    pod_lightning_lightning_environment_variables:
      ALIAS: 'example.com'
      ANNOUNCE_ADDR: '5.6.7.8'
      ANNOUNCE_ADDR_DISCOVERED_PORT: '9735'
      BIND_ADDR: '0.0.0.0'
      BITCOIN_RPCCONNECT: '1.2.3.4'
      BITCOIN_RPCPASSWORD: '3cf83a6puhq4hqjr8f0re28dkpb8hqw5'
      BITCOIN_RPCPORT: '8332'
      BITCOIN_RPCUSER: 'satoshi'
      RGB: 'f2a900'

    pod_lightning_lightning_read_only_root_filesystem: True
    pod_lightning_lightning_version: '23.11.2-1'
    pod_lightning_proxy: 'http://proxy.example.com:3128'
    pod_lightning_registry_address: 'registry.example.com'
    pod_lightning_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_lightning_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_lightning
  vars:
    pod_lightning_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_lightning
  vars:
    pod_lightning_state: 'inactive'
```

## Parameters

### Role

`pod_lightning_state`

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

`pod_lightning_lightning_environment_variables`

    Description: Define the lightning environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      ANNOUNCE_ADDR_DISCOVERED_PORT: '9735'
    Options    :
      Examples:
        ALIAS: 'example.com'
        ANNOUNCE_ADDR: '5.6.7.8'
        ANNOUNCE_ADDR_DISCOVERED_PORT: '9735'
        BIND_ADDR: '0.0.0.0'
        BITCOIN_RPCCONNECT: '1.2.3.4'
        BITCOIN_RPCPASSWORD: '3cf83a6puhq4hqjr8f0re28dkpb8hqw5'
        BITCOIN_RPCPORT: '8332'
        BITCOIN_RPCUSER: 'satoshi'
        RGB: 'f2a900'
      None    : {}

`pod_lightning_lightning_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : ''
    Options    : True | False

`pod_lightning_lightning_version`

    Description: Define the lightning container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '25.09.3-1'
    Options    :
      Examples: ''

`pod_lightning_log_driver`

    Description: Define the 'pod_lightning_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_lightning_monit_state`

    Description: Control the 'pod_lightning_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_lightning_nftables_filter_rule`

    Description: Define the 'pod_lightning_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ct state new tcp dport 9735 counter accept comment "lightning from any"
      add rule ip6 filter INPUT ct state new tcp dport 9735 counter accept comment "lightning from any"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8332 counter accept comment "json-rpc to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport 8332 counter accept comment "json-rpc to unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 9735 counter accept comment "lightning to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9735 counter accept comment "lightning to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 9735 counter accept comment "lightning from any"
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new tcp dport 8332 counter accept comment "json-rpc to internal-networks"
        add rule ip filter OUTPUT ct state new tcp dport 9735 counter accept comment "lightning to any"

`pod_lightning_nftables_state`

    Description: Control the 'pod_lightning_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_lightning_proxy`

    Description: Define the 'pod_lightning_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_lightning_registry_address`

    Description: Define the 'pod_lightning_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_lightning_registry_password`

    Description: Define the 'pod_lightning_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_lightning_registry_username`

    Description: Define the 'pod_lightning_registry_username' option.
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
