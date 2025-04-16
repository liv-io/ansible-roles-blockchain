# pod_bitcoin_core

## Description

Bitcoin Core connects to the Bitcoin peer-to-peer network to download and fully
validate blocks and transactions. It also includes a wallet and graphical user
interface, which can be optionally built.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_bitcoin_core
  vars:
    pod_bitcoin_core_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_bitcoin_core
  vars:
    pod_bitcoin_core_state: 'enable'
    pod_bitcoin_core_bitcoin_core_environment_variables:
      ADDNODE: 'btc.example.com:8333 btc.example.org:8333'
      PORT: '8333'
      REST: True
      RPCALLOWIP: '0.0.0.0/0'
      RPCAUTH: 'satoshi:d7316644b50aa7ea8792daf5c6b897e4$54194677335fcb771aa39533ddc2833927de9626b0d8fcb7940a7f56aa8a9569'
      RPCBIND: '0.0.0.0'
      RPCPORT: '8332'
      ZMQPUBHASHBLOCK: 'tcp://0.0.0.0:5555'
      ZMQPUBHASHTX: 'tcp://0.0.0.0:5556'
      ZMQPUBRAWBLOCK: 'tcp://0.0.0.0:5557'
      ZMQPUBRAWTX: 'tcp://0.0.0.0:5558'
    pod_bitcoin_core_bitcoin_core_version: '28.0-1'
    pod_bitcoin_core_proxy: 'http://proxy.example.com:3128'
    pod_bitcoin_core_registry_address: 'registry.example.com'
    pod_bitcoin_core_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_bitcoin_core_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_bitcoin_core
  vars:
    pod_bitcoin_core_state: 'disable'
    pod_bitcoin_core_bitcoin_core_environment_variables:
      ADDNODE: 'btc.example.com:8333 btc.example.org:8333'
      PORT: '8333'
      REST: True
      RPCALLOWIP: '0.0.0.0/0'
      RPCAUTH: 'satoshi:d7316644b50aa7ea8792daf5c6b897e4$54194677335fcb771aa39533ddc2833927de9626b0d8fcb7940a7f56aa8a9569'
      RPCBIND: '0.0.0.0'
      RPCPORT: '8332'
      ZMQPUBHASHBLOCK: 'tcp://0.0.0.0:5555'
      ZMQPUBHASHTX: 'tcp://0.0.0.0:5556'
      ZMQPUBRAWBLOCK: 'tcp://0.0.0.0:5557'
      ZMQPUBRAWTX: 'tcp://0.0.0.0:5558'
    pod_bitcoin_core_bitcoin_core_version: '28.0-1'
    pod_bitcoin_core_proxy: 'http://proxy.example.com:3128'
    pod_bitcoin_core_registry_address: 'registry.example.com'
    pod_bitcoin_core_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_bitcoin_core_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_bitcoin_core
  vars:
    pod_bitcoin_core_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_bitcoin_core
  vars:
    pod_bitcoin_core_state: 'inactive'
```

## Parameters

### Role

`pod_bitcoin_core_state`

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

`pod_bitcoin_core_bitcoin_core_environment_variables`

    Description: Define the bitcoin-core environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      PORT: '8333'
    Options    :
      Examples:
        ADDNODE: 'btc.example.com:8333 btc.example.org:8333'
        PORT: '8333'
        REST: True
        RPCALLOWIP: '0.0.0.0/0'
        RPCAUTH: 'satoshi:d7316644b50aa7ea8792daf5c6b897e4$54194677335fcb771aa39533ddc2833927de9626b0d8fcb7940a7f56aa8a9569'
        RPCBIND: '0.0.0.0'
        RPCPORT: '8332'
        ZMQPUBHASHBLOCK: 'tcp://0.0.0.0:5555'
        ZMQPUBHASHTX: 'tcp://0.0.0.0:5556'
        ZMQPUBRAWBLOCK: 'tcp://0.0.0.0:5557'
        ZMQPUBRAWTX: 'tcp://0.0.0.0:5558'
      None    : {}

`pod_bitcoin_core_bitcoin_core_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_bitcoin_core_bitcoin_core_version`

    Description: Define the bitcoin-core container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '29.0-1'
    Options    :
      Examples: ''

`pod_bitcoin_core_log_driver`

    Description: Define the 'pod_bitcoin_core_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'journald'
    Options    :
      Examples: 'journald'
      None    : ''

`pod_bitcoin_core_monitor_monit_state`

    Description: Control the 'pod_bitcoin_core_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_bitcoin_core_nftables_filter_rule`

    Description: Define the 'pod_bitcoin_core_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
      add rule ip6 filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc from internal private addresses"
        add rule ip filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"

`pod_bitcoin_core_nftables_state`

    Description: Control the 'pod_bitcoin_core_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_bitcoin_core_proxy`

    Description: Define the 'pod_bitcoin_core_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_bitcoin_core_registry_address`

    Description: Define the 'pod_bitcoin_core_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_bitcoin_core_registry_password`

    Description: Define the 'pod_bitcoin_core_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_bitcoin_core_registry_username`

    Description: Define the 'pod_bitcoin_core_registry_username' option.
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
