# lightning

## Description

Core Lightning - Lightning Network implementation focusing on spec compliance
and performance

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lightning
  vars:
    lightning_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: lightning
  vars:
    lightning_state: 'enable'
    lightning_addr: '0.0.0.0:9735'
    lightning_alias: 'liv'
    lightning_announce_addr: '1.2.3.4'
    lightning_bind_addr: '127.0.0.1:9734'
    lightning_bitcoin_rpcconnect: '10.1.1.11'
    lightning_bitcoin_rpcpassword: 'k@EcMe!kFGD,f9N;GBDhqpJm.oU5,YmX'
    lightning_bitcoin_rpcport: 8332
    lightning_bitcoin_rpcuser: 'satoshi'
    lightning_log_level: 'info'
    lightning_rgb: '00CDFA'
```

### Disable

```
- hosts: all
  roles:
    - role: lightning
  vars:
    lightning_state: 'disable'
    lightning_addr: '0.0.0.0:9735'
    lightning_alias: 'liv'
    lightning_announce_addr: '1.2.3.4'
    lightning_bind_addr: '127.0.0.1:9734'
    lightning_bitcoin_rpcconnect: '10.1.1.11'
    lightning_bitcoin_rpcpassword: 'k@EcMe!kFGD,f9N;GBDhqpJm.oU5,YmX'
    lightning_bitcoin_rpcport: 8332
    lightning_bitcoin_rpcuser: 'satoshi'
    lightning_log_level: 'info'
    lightning_rgb: '00CDFA'
```

### Remove

```
- hosts: all
  roles:
    - role: lightning
  vars:
    lightning_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lightning
  vars:
    lightning_state: 'inactive'
```

## Parameters

### Role

`lightning_state`

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

`lightning_addr`

    Description: Define the 'lightning_addr' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.0.0.0:9735'
    Options    :
      Examples: 'localhost:9735' | 0.0.0.0:9735 | '[::1]:9736'

`lightning_alias`

    Description: Define the 'lightning_alias' option.
                 Max. 32 UTF-8 characters.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'LND Server 01'
      None    : ''

`lightning_announce_addr`

    Description: Define the 'lightning_announce_addr' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '2.2.2.2' | '3.3.3.3'
      None    : ''

`lightning_announce_addr_discovered`

    Description: Control the 'lightning_announce_addr_discovered' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'auto'
    Options    : 'on' | 'off' | 'auto'

`lightning_announce_addr_discovered_port`

    Description: Define the 'lightning_announce_addr_discovered_port' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : ''
    Options    :
      Examples: '9735'
      None    : ''

`lightning_bind_addr`

    Description: Define the 'lightning_bind_addr' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '127.0.0.1:9734'
    Options    :
      Examples: 'localhost:9735' | 0.0.0.0:9735 | '[::1]:9736'
      None    : ''

`lightning_bitcoin_cli`

    Description: Define the 'lightning_bitcoin_cli' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/app/bitcoind/current/bin/bitcoin-cli'
    Options    :
      Examples: '/usr/local/bin/bitcoin-cli'

`lightning_bitcoin_rpcconnect`

    Description: Define the 'lightning_bitcoin_rpcconnect' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'localhost'
    Options    :
      Examples: 'localhost' | '10.1.1.11'

`lightning_bitcoin_rpcpassword`

    Description: Define the 'lightning_bitcoin_rpcpassword' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'GB5_jM284,Rvf!4.S8KtBMWglCe_f273'

`lightning_bitcoin_rpcport`

    Description: Define the 'lightning_bitcoin_rpcport' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 8332
    Options    :
      Examples: 8332

`lightning_bitcoin_rpcuser`

    Description: Define the 'lightning_bitcoin_rpcuser' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user01' | 'satoshi'

`lightning_encrypted_hsm`

    Description: Control the 'lightning_encrypted_hsm' option.
                 1. Generate BIP39 mnemonic
                 2. lightning-hsmtool generatehsm /data/lightningd/hsm
                 3. lightning-hsmtool encrypt /data/lightningd/hsm
    Implemented: 23.08.1-1
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lightning_log_level`

    Description: Define the 'lightning_log_level' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'info'
    Options    :
      Examples: 'io' | 'debug' | 'info' | 'unusual' | 'broken'

`lightning_monitor_monit_state`

    Description: Control the 'lightning_monitor_monit_state' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lightning_nftables_filter_rule`

    Description: Define the 'lightning_nftables_filter_rule' option.
    Implemented: 23.08.1-1
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

`lightning_nftables_state`

    Description: Control the 'lightning_nftables_state' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lightning_rgb`

    Description: Define the 'lightning_rgb' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '000000'
    Options    :
      Examples: '#111111' | '#222222'

`lightning_version`

    Description: Define the 'lightning_version' option.
    Implemented: 23.08.1-1
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '23.08.1'
    Options    :
      Examples: '23.05.1' | '23.08.1'

## Conflicts

## Dependencies

### Archives

`lightning`

### Packages

`libpq5`

    Version: >= 15.0
    Name   :
      Debian 11: 'libpq5'
      Debian 12: 'libpq5'

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
