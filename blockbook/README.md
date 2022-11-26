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
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

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

### Roles

## Dependencies

### Archives

### Packages

### Roles

`ca_certificates`

`git`

`gnupg`

`gnu_tar`

`wget`

## Requirements

### Control Node

`ansible`

    Version: >= 2.8.0

### Managed Node

`python`

    Version: >= 2.7.0

## support

### Operating Systems

`debian`

    Version: 11