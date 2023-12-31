# lnd

## Description

The Lightning Network Daemon (lnd) - is a complete implementation of a Lightning
Network node. lnd has several pluggable back-end chain services including
btcd (a full-node), bitcoind, and neutrino (a new experimental light client).
The project's codebase uses the btcsuite set of Bitcoin libraries, and also
exports a large set of isolated re-usable Lightning Network related libraries
within it.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lnd
  vars:
    lnd_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: lnd
  vars:
    lnd_state: 'enable'
    lnd_alias: 'liv'
    lnd_bitcoind_rpchost: '10.1.1.11:8332'
    lnd_bitcoind_rpcpass: 'h-ubf3jDGeSq:2;VGPfLPGcK9Hmj5jna'
    lnd_bitcoind_rpcuser: 'satoshi'
    lnd_bitcoind_zmqpubrawblock: 'tcp://10.1.1.11:5557'
    lnd_bitcoind_zmqpubrawtx: 'tcp://10.1.1.11:5558'
    lnd_color: '#00CDFA'
    lnd_externalip: '1.2.3.4'
    lnd_listen: ['0.0.0.0:9735']
    lnd_rpclisten: ['127.0.0.1:10009']
```

### Disable

```
- hosts: all
  roles:
    - role: lnd
  vars:
    lnd_state: 'disable'
    lnd_alias: 'liv'
    lnd_bitcoind_rpchost: '10.1.1.11:8332'
    lnd_bitcoind_rpcpass: 'h-ubf3jDGeSq:2;VGPfLPGcK9Hmj5jna'
    lnd_bitcoind_rpcuser: 'satoshi'
    lnd_bitcoind_zmqpubrawblock: 'tcp://10.1.1.11:5557'
    lnd_bitcoind_zmqpubrawtx: 'tcp://10.1.1.11:5558'
    lnd_color: '#00CDFA'
    lnd_externalip: '1.2.3.4'
    lnd_listen: ['0.0.0.0:9735']
    lnd_rpclisten: ['127.0.0.1:10009']
```

### Remove

```
- hosts: all
  roles:
    - role: lnd
  vars:
    lnd_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lnd
  vars:
    lnd_state: 'inactive'
```

## Parameters

### Role

`lnd_state`

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

`lnd_alias`

    Description: Define the 'lnd_alias' option.
                 Max. 32 UTF-8 characters.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'LND Server 01'
      None    : ''

`lnd_bitcoin_active`

    Description: Control the 'lnd_bitcoin_active' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`lnd_bitcoind_estimatemode`

    Description: Set the 'lnd_bitcoind_estimatemode' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'ECONOMICAL'
    Options    :
      Conservative: 'CONSERVATIVE' | 'conservative'
      Economical  : 'ECONOMICAL' | 'economical'

`lnd_bitcoind_rpchost`

    Description: Define the 'lnd_bitcoind_rpchost' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'localhost:8332'
    Options    :
      Examples: 'localhost:8332' | '10.1.1.11:8332'
      None    : ''

`lnd_bitcoind_rpcpass`

    Description: Define the 'lnd_bitcoind_rpcpass' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '_HWpWi5BVj-TxSdPPvxU-W:W_B8iXgKN' | 'tE,GtviDrh62kKHahRRi4bX;ccf2D,4d'
      None    : ''

`lnd_bitcoind_rpcuser`

    Description: Define the 'lnd_bitcoind_rpcuser' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi'
      None    : ''

`lnd_bitcoind_zmqpubrawblock`

    Description: Define the 'lnd_bitcoind_zmqpubrawblock' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'tcp://localhost:5557'
    Options    :
      Examples: 'tcp://10.1.1.11:5557'

`lnd_bitcoind_zmqpubrawtx`

    Description: Define the 'lnd_bitcoind_zmqpubrawtx' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'tcp://localhost:5558'
    Options    :
      Examples: 'tcp://10.1.1.11:5558'

`lnd_color`

    Description: Define the 'lnd_color' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '#000000'
    Options    :
      Examples: '#111111' | '#222222'
      None    : ''

`lnd_externalip`

    Description: Define the 'lnd_externalip' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '5.6.7.8'
      None    : ''

`lnd_listen`

    Description: Define the 'lnd_listen' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['0.0.0.0:9735']
    Options    :
      Examples: ['localhost:9735'] | ['0.0.0.0:9735', '[::1]:9736']
      None    : []

`lnd_monitor_monit_state`

    Description: Control the 'lnd_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lnd_nftables_filter_rule`

    Description: Define the 'lnd_nftables_filter_rule' option.
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

`lnd_nftables_state`

    Description: Control the 'lnd_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lnd_restlisten`

    Description: Define the 'lnd_restlisten' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['localhost:8080'] | ['0.0.0.0:8080', '[::1]:8081']
      None    : []

`lnd_rpclisten`

    Description: Define the 'lnd_rpclisten' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['localhost:10009'] | ['0.0.0.0:10009', '[::1]:10009']
      None    : []

`lnd_version`

    Description: Define the 'lnd_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.17.3-beta'
    Options    :
      Examples: '0.11.0-beta.rc1' | '0.10.4-beta'

## Conflicts

## Dependencies

### Archives

`lnd`

### Packages

`tar`

    Version: >= 1.0
    Name   :
      Debian 11: 'tar'
      Debian 12: 'tar'

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
