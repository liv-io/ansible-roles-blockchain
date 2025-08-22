# pod_lnd

## Description

The Lightning Network Daemon (lnd) - is a complete implementation of a Lightning Network node.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_lnd
  vars:
    pod_lnd_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_lnd
  vars:
    pod_lnd_state: 'enable'
    pod_lnd_lnd_environment_variables:
      ALIAS: 'example.com'
      BITCOIND_RPCHOST: '1.2.3.4:8332'
      BITCOIND_RPCPASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
      BITCOIND_RPCUSER: 'satoshi'
      BITCOIND_ZMQPUBRAWBLOCK: 'tcp://1.2.3.4:5557'
      BITCOIND_ZMQPUBRAWTX: 'tcp://1.2.3.4:5558'
      COLOR: '#f2a900'
      EXTERNALIP: '5.6.7.8'
      LISTEN: '0.0.0.0:9735'

    pod_lnd_proxy: 'http://proxy.example.com:3128'
    pod_lnd_registry_address: 'registry.example.com'
    pod_lnd_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_lnd_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_lnd
  vars:
    pod_lnd_state: 'disable'
    pod_lnd_lnd_environment_variables:
      ALIAS: 'example.com'
      BITCOIND_RPCHOST: '1.2.3.4:8332'
      BITCOIND_RPCPASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
      BITCOIND_RPCUSER: 'satoshi'
      BITCOIND_ZMQPUBRAWBLOCK: 'tcp://1.2.3.4:5557'
      BITCOIND_ZMQPUBRAWTX: 'tcp://1.2.3.4:5558'
      COLOR: '#f2a900'
      EXTERNALIP: '5.6.7.8'
      LISTEN: '0.0.0.0:9735'

    pod_lnd_proxy: 'http://proxy.example.com:3128'
    pod_lnd_registry_address: 'registry.example.com'
    pod_lnd_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_lnd_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_lnd
  vars:
    pod_lnd_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_lnd
  vars:
    pod_lnd_state: 'inactive'
```

## Parameters

### Role

`pod_lnd_state`

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

`pod_lnd_lnd_environment_variables`

    Description: Define the lnd environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      LISTEN: '0.0.0.0:9735'
    Options    :
      Examples:
        ALIAS: 'example.com'
        BITCOIND_RPCHOST: '1.2.3.4:8332'
        BITCOIND_RPCPASS: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
        BITCOIND_RPCUSER: 'satoshi'
        BITCOIND_ZMQPUBRAWBLOCK: 'tcp://1.2.3.4:5557'
        BITCOIND_ZMQPUBRAWTX: 'tcp://1.2.3.4:5558'
        COLOR: '#f2a900'
        EXTERNALIP: '5.6.7.8'
        LISTEN: '0.0.0.0:9735'
      None    : {}

`pod_lnd_lnd_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_lnd_lnd_version`

    Description: Define the lnd container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.19.3-beta-1'
    Options    :
      Examples: ''

`pod_lnd_log_driver`

    Description: Define the 'pod_lnd_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_lnd_monitor_monit_state`

    Description: Control the 'pod_lnd_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_lnd_nftables_filter_rule`

    Description: Define the 'pod_lnd_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ct state new tcp dport 9735 counter accept comment "lnd from any"
      add rule ip6 filter INPUT ct state new tcp dport 9735 counter accept comment "lnd from any"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 5557, 5558, 8332 } counter accept comment "json-rpc to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport { 5557, 5558, 8332 } counter accept comment "json-rpc to unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 9735 counter accept comment "lnd to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9735 counter accept comment "lnd to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 9735 counter accept comment "lnd from any"
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new tcp dport { 5557, 5558, 8332 } counter accept comment "json-rpc to internal-networks"
        add rule ip filter OUTPUT ct state new tcp dport 9735 counter accept comment "lnd to any"

`pod_lnd_nftables_state`

    Description: Control the 'pod_lnd_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_lnd_proxy`

    Description: Define the 'pod_lnd_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_lnd_registry_address`

    Description: Define the 'pod_lnd_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_lnd_registry_password`

    Description: Define the 'pod_lnd_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_lnd_registry_username`

    Description: Define the 'pod_lnd_registry_username' option.
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
