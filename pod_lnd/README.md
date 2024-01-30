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
    pod_lnd_lnd_alias: 'example.com'
    pod_lnd_lnd_bitcoind_rpchost: '1.2.3.4:8332'
    pod_lnd_lnd_bitcoind_rpcpass: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
    pod_lnd_lnd_bitcoind_rpcuser: 'satoshi'
    pod_lnd_lnd_bitcoind_zmqpubrawblock: 'tcp://1.2.3.4:5557'
    pod_lnd_lnd_bitcoind_zmqpubrawtx: 'tcp://1.2.3.4:5558'
    pod_lnd_lnd_color: '#f2a900'
    pod_lnd_lnd_externalip: '5.6.7.8'
    pod_lnd_lnd_listen: '0.0.0.0:9735'
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
    pod_lnd_lnd_alias: 'example.com'
    pod_lnd_lnd_bitcoind_rpchost: '1.2.3.4:8332'
    pod_lnd_lnd_bitcoind_rpcpass: '3cF83a6puhQ4HqJr8f0re28dKPB8HQw5'
    pod_lnd_lnd_bitcoind_rpcuser: 'satoshi'
    pod_lnd_lnd_bitcoind_zmqpubrawblock: 'tcp://1.2.3.4:5557'
    pod_lnd_lnd_bitcoind_zmqpubrawtx: 'tcp://1.2.3.4:5558'
    pod_lnd_lnd_color: '#f2a900'
    pod_lnd_lnd_externalip: '5.6.7.8'
    pod_lnd_lnd_listen: '0.0.0.0:9735'
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

`pod_lnd_lnd_alias`

    Description: --alias
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'lnd-node' | 'lnd-node-alias'
      None    : ''

`pod_lnd_lnd_bitcoind_estimatemode`

    Description: --bitcoind.estimatemode
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    : 'ECONOMICAL' | 'CONSERVATIVE'

`pod_lnd_lnd_bitcoind_rpchost`

    Description: --bitcoind.rpchost
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '10.10.10.10:8332'

`pod_lnd_lnd_bitcoind_rpcpass`

    Description: --bitcoind.rpcpass
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'q-HrBk83.5w9wuhFt,nP' | 'J4eQwP_vkMnB8A!s9pRp'
      None    : ''

`pod_lnd_lnd_bitcoind_rpcuser`

    Description: --bitcoind.rpcuser
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi' | 'hal' | 'len' | 'nick' | 'adam' | 'david'
      None    : ''

`pod_lnd_lnd_bitcoind_zmqpubrawblock`

    Description: --bitcoind.zmqpubrawblock
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'tcp://10.10.10.10:5557'
      None    : ''

`pod_lnd_lnd_bitcoind_zmqpubrawtx`

    Description: --bitcoind.zmqpubrawtx
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'tcp://10.10.10.10:5558'
      None    : ''

`pod_lnd_lnd_bitcoin_network`

    Description: --bitcoin.testnet / --bitcoin.mainnet
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    : 'testnet' | 'mainnet'

`pod_lnd_lnd_bitcoin_node`

    Description: --bitcoin.node
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    : 'btcd' | 'bitcoind'

`pod_lnd_lnd_color`

    Description: --color
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '#f2a900' | 'cc9900'

`pod_lnd_lnd_externalip`

    Description: --externalip
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '5.6.7.8'
      None    : ''

`pod_lnd_lnd_listen`

    Description: --listen
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '127.0.0.1:9735' | '1.2.3.4:9735'

`pod_lnd_lnd_lnddir`

    Description: --lnddir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/lnd'

`pod_lnd_lnd_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_lnd_lnd_restlisten`

    Description: --restlisten
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '127.0.0.1:8080' | '0.0.0.0:8080' | '[::1]:8080'
      None    : ''

`pod_lnd_lnd_rpclisten`

    Description: --rpclisten
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '127.0.0.1:10009' | '0.0.0.0:10009' | '[::1]:10009'
      None    : ''

`pod_lnd_lnd_version`

    Description: Define the lnd container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.17.3-beta-3'
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

    Version: 11
    Version: 12
