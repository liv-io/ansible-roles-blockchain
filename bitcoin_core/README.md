# bitcoin_core

## Description

Bitcoin is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. Bitcoin uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. Bitcoin Core is the name of open source
software which enables the use of this currency.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: bitcoin_core
  vars:
    bitcoin_core_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: bitcoin_core
  vars:
    bitcoin_core_state: 'enable'
    bitcoin_core_rpc_allow_ip: '0.0.0.0/0'
    bitcoin_core_rpc_auth: 'satoshi:63c20cd63c1eed39bfd8ecc04cf8d816$83340b182b07b1b2d55352797eab617b821f83c4f1c28bd3dfc40240e412ec7a'
    bitcoin_core_rpc_bind: '0.0.0.0'
    bitcoin_core_zeromq_bind: '0.0.0.0'
```

### Disable

```
- hosts: all
  roles:
    - role: bitcoin_core
  vars:
    bitcoin_core_state: 'disable'
    bitcoin_core_rpc_allow_ip: '0.0.0.0/0'
    bitcoin_core_rpc_auth: 'satoshi:63c20cd63c1eed39bfd8ecc04cf8d816$83340b182b07b1b2d55352797eab617b821f83c4f1c28bd3dfc40240e412ec7a'
    bitcoin_core_rpc_bind: '0.0.0.0'
    bitcoin_core_zeromq_bind: '0.0.0.0'
```

### Remove

```
- hosts: all
  roles:
    - role: bitcoin_core
  vars:
    bitcoin_core_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: bitcoin_core
  vars:
    bitcoin_core_state: 'inactive'
```

## Parameters

### Role

`bitcoin_core_state`

    Description: Control the state of the role.
    Implemented: 0.19.0.1-1
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

`bitcoin_core_monitor_monit_state`

    Description: Control the 'bitcoin_core_monitor_monit_state' option.
    Implemented: 0.20.1-6
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`bitcoin_core_network_bind`

    Description: Define the 'bitcoin_core_network_bind' option.
    Implemented: 0.19.0.1-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.0.0.0'
    Options    :
      Examples: '10.1.1.10' | '0.0.0.0'

`bitcoin_core_network_port`

    Description: Define the 'bitcoin_core_network_port' option.
    Implemented: 0.19.0.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 8333
    Options    :
      Examples: 8333

`bitcoin_core_rpc_allow_ip`

    Description: Define the 'bitcoin_core_rpc_allow_ip' option.
    Implemented: 0.19.0.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '127.0.0.0/8'
    Options    :
      Examples: '10.0.0.0/8' | '0.0.0.0/0'

`bitcoin_core_rpc_auth`

    Description: Define the 'bitcoin_core_rpc_auth' option.
                 For more information, visit:
                 https://github.com/bitcoin/bitcoin/tree/master/share/rpcauth
    Implemented: 0.19.0.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi:d7316644b50aa7ea8792daf5c6b897e4$54194677335fcb771aa39533ddc2833927de9626b0d8fcb7940a7f56aa8a9569' |
                'satoshi:63c20cd63c1eed39bfd8ecc04cf8d816$83340b182b07b1b2d55352797eab617b821f83c4f1c28bd3dfc40240e412ec7a'
      None    : ''

`bitcoin_core_rpc_bind`

    Description: Define the 'bitcoin_core_rpc_bind' option.
    Implemented: 0.19.0.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '127.0.0.1'
    Options    :
      Examples: '10.1.1.10' | '0.0.0.0'

`bitcoin_core_rpc_port`

    Description: Define the 'bitcoin_core_rpc_port' option.
    Implemented: 0.19.0.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 8332
    Options    :
      Examples: 8332

`bitcoin_core_version`

    Description: Define the 'bitcoin_core_version' option.
    Implemented: 0.20.0-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '25.0'
    Options    :
      Examples: '0.18.1' | '0.18.0'

`bitcoin_core_zeromq_bind`

    Description: Define the 'bitcoin_core_zeromq_bind' option.
    Implemented: 0.19.0.1-2
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '127.0.0.1'
    Options    :
      Examples: '10.1.1.10' | '0.0.0.0'

`bitcoin_core_zeromq_pub_hash_block_port`

    Description: Define the 'bitcoin_core_zeromq_pub_hash_block_port' option.
    Implemented: 0.20.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 5555
    Options    :
      Examples: 5555

`bitcoin_core_zeromq_pub_hash_tx_port`

    Description: Define the 'bitcoin_core_zeromq_pub_hash_tx_port' option.
    Implemented: 0.20.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 5556
    Options    :
      Examples: 5556

`bitcoin_core_zeromq_pub_raw_block_port`

    Description: Define the 'bitcoin_core_zeromq_pub_raw_block_port' option.
    Implemented: 0.20.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 5557
    Options    :
      Examples: 5557

`bitcoin_core_zeromq_pub_raw_tx_port`

    Description: Define the 'bitcoin_core_zeromq_pub_raw_tx_port' option.
    Implemented: 0.20.1-2
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 5558
    Options    :
      Examples: 5558

## Conflicts

## Dependencies

### Archives

`bitcoin-core`

### Packages

`tar`

    Version: >= 1.0
    Name   :
      Debian 11: 'tar'
      Debian 12: 'tar'

## Requirements

### Control Node

`ansible`

    Version: >= 2.8.0

### Managed Node

`python`

    Version: >= 2.7.0

## Support

### Operating Systems

`debian`

    Version: 11
