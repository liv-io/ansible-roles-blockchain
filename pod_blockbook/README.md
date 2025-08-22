# pod_blockbook

## Description

Trezor address/account balance backend.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_blockbook
  vars:
    pod_blockbook_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_blockbook
  vars:
    pod_blockbook_state: 'enable'
    pod_blockbook_blockbook_environment_variables:
      COIN_LABEL: 'Bitcoin'
      COIN_NAME: 'Bitcoin'
      COIN_SHORTCUT: 'BTC'
      MESSAGE_QUEUE_BINDING: 'tcp://1.2.3.4:5555'
      PORT: 8080
      RPC_PASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
      RPC_URL: 'http://1.2.3.4:8332'
      RPC_USER: 'satoshi'

    pod_blockbook_proxy: 'http://proxy.example.com:3128'
    pod_blockbook_registry_address: 'registry.example.com'
    pod_blockbook_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_blockbook_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_blockbook
  vars:
    pod_blockbook_state: 'disable'
    pod_blockbook_blockbook_environment_variables:
      COIN_LABEL: 'Bitcoin'
      COIN_NAME: 'Bitcoin'
      COIN_SHORTCUT: 'BTC'
      MESSAGE_QUEUE_BINDING: 'tcp://1.2.3.4:5555'
      PORT: 8080
      RPC_PASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
      RPC_URL: 'http://1.2.3.4:8332'
      RPC_USER: 'satoshi'

    pod_blockbook_proxy: 'http://proxy.example.com:3128'
    pod_blockbook_registry_address: 'registry.example.com'
    pod_blockbook_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_blockbook_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_blockbook
  vars:
    pod_blockbook_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_blockbook
  vars:
    pod_blockbook_state: 'inactive'
```

## Parameters

### Role

`pod_blockbook_state`

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

`pod_blockbook_blockbook_environment_variables`

    Description: Define the blockbook environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      PORT: 8080
    Options    :
      Examples:
        COIN_LABEL: 'Bitcoin'
        COIN_NAME: 'Bitcoin'
        COIN_SHORTCUT: 'BTC'
        MESSAGE_QUEUE_BINDING: 'tcp://1.2.3.4:5555'
        PORT: 8080
        RPC_PASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
        RPC_URL: 'http://1.2.3.4:8332'
        RPC_USER: 'satoshi'
      None    : {}

`pod_blockbook_blockbook_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_blockbook_blockbook_version`

    Description: Define the blockbook container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.4.0-1'
    Options    :
      Examples: ''

`pod_blockbook_log_driver`

    Description: Define the 'pod_blockbook_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_blockbook_monitor_monit_state`

    Description: Control the 'pod_blockbook_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_blockbook_nftables_filter_rule`

    Description: Define the 'pod_blockbook_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8080 counter accept comment "blockbook from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8080 counter accept comment "blockbook from unique local addresses"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 5555, 8332 } counter accept comment "json-rpc to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport { 5555, 8332 } counter accept comment "json-rpc to unique local addresses"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new tcp dport { 5555, 8332 } counter accept comment "json-rpc to internal-networks"

`pod_blockbook_nftables_state`

    Description: Control the 'pod_blockbook_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_blockbook_proxy`

    Description: Define the 'pod_blockbook_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_blockbook_registry_address`

    Description: Define the 'pod_blockbook_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_blockbook_registry_password`

    Description: Define the 'pod_blockbook_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_blockbook_registry_username`

    Description: Define the 'pod_blockbook_registry_username' option.
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
