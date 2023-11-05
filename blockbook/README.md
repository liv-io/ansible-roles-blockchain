# blockbook

## Description

Blockbook is back-end service for Trezor wallet. Main features of Blockbook are:
- index of addresses and address balances of the connected block chain
- fast index search
- simple blockchain explorer
- websocket, API and legacy Bitcore Insight compatible socket.io interfaces
- support of multiple coins (Bitcoin and Ethereum type) with easy extensibility
  to other coins
- scripts for easy creation of debian packages for backend and blockbook

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: blockbook
  vars:
    blockbook_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: blockbook
  vars:
    blockbook_state: 'enable'
    blockbook_message_queue_binding: 'tcp://10.1.1.10:5555'
    blockbook_rpc_pass: 'r7e5Tpb3aqrk23HFTkPreN9BrXk8u4de'
    blockbook_rpc_url: 'http://10.1.1.10:8332'
    blockbook_rpc_user: 'satoshi'
```

### Disable

```
- hosts: all
  roles:
    - role: blockbook
  vars:
    blockbook_state: 'disable'
    blockbook_message_queue_binding: 'tcp://10.1.1.10:5555'
    blockbook_rpc_pass: 'r7e5Tpb3aqrk23HFTkPreN9BrXk8u4de'
    blockbook_rpc_url: 'http://10.1.1.10:8332'
    blockbook_rpc_user: 'satoshi'
```

### Remove

```
- hosts: all
  roles:
    - role: blockbook
  vars:
    blockbook_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: blockbook
  vars:
    blockbook_state: 'inactive'
```

## Parameters

### Role

`blockbook_state`

    Description: Control the state of the role.
    Implemented: 0.3.6-2
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

`blockbook_build_tags`

    Description: Define the 'blockbook_build_tags' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'rocksdb_6_16'
    Options    :
      Examples: 'rocksdb_6_10' | 'rocksdb_6_15'

`blockbook_go_version`

    Description: Define the 'blockbook_go_version' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1.17.5'
    Options    :
      Examples: '1.17.1' | '1.17.4'

`blockbook_message_queue_binding`

    Description: Define the 'blockbook_message_queue_binding' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'tcp://localhost:5555'
    Options    :
      Examples: 'tcp://10.1.1.11:5555'

`blockbook_monitor_monit_state`

    Description: Control the 'blockbook_monitor_monit_state' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`blockbook_nftables_filter_rule`

    Description: Define the 'blockbook_nftables_filter_rule' option.
    Implemented: 0.3.6-8
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8080 counter accept comment "blockbook from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8080 counter accept comment "blockbook from unique local addresses"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc to unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 8080 counter accept comment "blockbook from internal-networks"
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new tcp dport { 5555, 5556, 5557, 5558, 8332 } counter accept comment "json-rpc to internal-networks"

`blockbook_nftables_state`

    Description: Control the 'blockbook_nftables_state' option.
    Implemented: 0.3.6-8
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`blockbook_rocksdb_version`

    Description: Define the 'blockbook_rocksdb_version' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '6.22.1'
    Options    :
      Examples: '6.21.0' | '6.22.0'

`blockbook_rpc_pass`

    Description: Define the 'blockbook_rpc_pass' option.
                 For more information, visit:
                 https://github.com/bitcoin/bitcoin/tree/master/share/rpcauth
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'NVsc0kchBeA7MNvmQNzD1HSD53LdEWxL' | 'G4vjWqUDzlRQdinZwebZoOdrp6o05Zln'
      None    : ''

`blockbook_rpc_url`

    Description: Define the 'blockbook_rpc_url' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'http://localhost:8332'
    Options    :
      Examples: 'http://10.1.1.11:8332'

`blockbook_rpc_user`

    Description: Define the 'blockbook_rpc_user' option.
                 For more information, visit:
                 https://github.com/bitcoin/bitcoin/tree/master/share/rpcauth
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi' | 'nakamoto'
      None    : ''

`blockbook_version`

    Description: Define the 'blockbook_version' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.3.6'
    Options    :
      Examples: '0.3.1' | '0.3.5'

`blockbook_zeromq_version`

    Description: Define the 'blockbook_zeromq_version' option.
    Implemented: 0.3.6-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '4.3.4'
    Options    :
      Examples: '4.3.1' | '4.3.3'

## Conflicts

## Dependencies

### Packages

`ca-certificates`

    Version: >= 20200601
    Name   :
      Debian 11: 'ca-certificates'
      Debian 12: 'ca-certificates'

`git`

    Version: >= 2.0
    Name   :
      Debian 11: 'git'
      Debian 12: 'git'

`gnupg`

    Version: >= 2.0
    Name   :
      Debian 11: 'gnupg'
      Debian 12: 'gnupg'

`tar`

    Version: >= 1.0
    Name   :
      Debian 11: 'tar'
      Debian 12: 'tar'

`wget`

    Version: >= 1.0
    Name   :
      Debian 11: 'wget'
      Debian 12: 'wget'

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
