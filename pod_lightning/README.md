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
    pod_lightning_lightning_alias: 'example.com'
    pod_lightning_lightning_announce_addr: '5.6.7.8'
    pod_lightning_lightning_announce_addr_discovered_port: '9735'
    pod_lightning_lightning_bind_addr: '0.0.0.0'
    pod_lightning_lightning_bitcoin_rpcconnect: '1.2.3.4'
    pod_lightning_lightning_bitcoin_rpcpassword: '3cf83a6puhq4hqjr8f0re28dkpb8hqw5'
    pod_lightning_lightning_bitcoin_rpcport: '8332'
    pod_lightning_lightning_bitcoin_rpcuser: 'satoshi'
    pod_lightning_lightning_read_only_root_filesystem: True
    pod_lightning_lightning_rgb: 'f2a900'
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
    pod_lightning_lightning_alias: 'example.com'
    pod_lightning_lightning_announce_addr: '5.6.7.8'
    pod_lightning_lightning_announce_addr_discovered_port: '9735'
    pod_lightning_lightning_bind_addr: '0.0.0.0'
    pod_lightning_lightning_bitcoin_rpcconnect: '1.2.3.4'
    pod_lightning_lightning_bitcoin_rpcpassword: '3cf83a6puhq4hqjr8f0re28dkpb8hqw5'
    pod_lightning_lightning_bitcoin_rpcport: '8332'
    pod_lightning_lightning_bitcoin_rpcuser: 'satoshi'
    pod_lightning_lightning_read_only_root_filesystem: True
    pod_lightning_lightning_rgb: 'f2a900'
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

`pod_lightning_lightning_addr`

    Description: --addr
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '5.6.7.8'
      None    : ''

`pod_lightning_lightning_alias`

    Description: --alias
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'lightning-node' | 'lightning-node-alias'
      None    : ''

`pod_lightning_lightning_announce_addr`

    Description: --announce-addr
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '5.6.7.8'
      None    : ''

`pod_lightning_lightning_announce_addr_discovered`

    Description:
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'true' | 'false' | 'auto'

`pod_lightning_lightning_announce_addr_discovered_port`

    Description: --announce-addr-discovered-port
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '9735' | '8735'

`pod_lightning_lightning_autolisten`

    Description: --autolisten
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : ''
    Options    : true | false

`pod_lightning_lightning_bind_addr`

    Description: --bind-addr
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '5.6.7.8'
      None    : ''

`pod_lightning_lightning_bitcoin_cli`

    Description: --bitcoin-cli
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/bin/bitcoin-cli'

`pod_lightning_lightning_bitcoin_datadir`

    Description: --bitcoin-datadir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/lightning/bitcoin-cli'

`pod_lightning_lightning_bitcoin_rpcconnect`

    Description: --bitcoin-rpcconnect
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '10.10.10.10'

`pod_lightning_lightning_bitcoin_rpcpassword`

    Description: --bitcoin-rpcpassword
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'q-HrBk83.5w9wuhFt,nP' | 'J4eQwP_vkMnB8A!s9pRp'
      None    : ''

`pod_lightning_lightning_bitcoin_rpcport`

    Description: --bitcoin-rpcport
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '8334'

`pod_lightning_lightning_bitcoin_rpcuser`

    Description: --bitcoin-rpcuser
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi' | 'hal' | 'len' | 'nick' | 'adam' | 'david'
      None    : ''

`pod_lightning_lightning_lightning_dir`

    Description: --lightning-dir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/data'

`pod_lightning_lightning_log_level`

    Description: --log-level
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'io' | 'debug' | 'info' | 'unusual' | 'broken'

`pod_lightning_lightning_log_timestamps`

    Description: --log-timestamps
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : ''
    Options    : true | false

`pod_lightning_lightning_network`

    Description: --network / --mainnet / --testnet
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    : 'testnet' | 'mainnet'

`pod_lightning_lightning_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : ''
    Options    : True | False

`pod_lightning_lightning_rgb`

    Description: --rgb
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'f2a900' | 'cc9900'

`pod_lightning_lightning_version`

    Description: Define the lightning container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '24.02.2-1'
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

`pod_lightning_monitor_monit_state`

    Description: Control the 'pod_lightning_monitor_monit_state' option.
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

    Version: 11
    Version: 12
