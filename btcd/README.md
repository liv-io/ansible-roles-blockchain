# btcd

## Description

btcd is an alternative full node bitcoin implementation written in Go (golang).

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: btcd
  vars:
    btcd_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: btcd
  vars:
    btcd_state: 'enable'
    btcd_rpclisten: ['0.0.0.0:8334']
    btcd_rpcpass: '5mQ.2JAqabmF8_P2fj7H6W,sc4$a!9Kc'
    btcd_rpcuser: 'satoshi'
```

### Disable

```
- hosts: all
  roles:
    - role: btcd
  vars:
    btcd_state: 'disable'
    btcd_rpclisten: ['0.0.0.0:8334']
    btcd_rpcpass: '5mQ.2JAqabmF8_P2fj7H6W,sc4$a!9Kc'
    btcd_rpcuser: 'satoshi'
```

### Remove

```
- hosts: all
  roles:
    - role: btcd
  vars:
    btcd_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: btcd
  vars:
    btcd_state: 'inactive'
```

## Parameters

### Role

`btcd_state`

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

`btcd_addpeer`

    Description: Define the 'btcd_addpeer' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples:  ['1.2.3.4:8333', '[2002::1234]:8333']
      None    : []

`btcd_externalip`

    Description: Define the 'btcd_externalip' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples:  ['1.2.3.4:8333', '[2002::1234]:8333']
      None    : []

`btcd_listen`

    Description: Define the 'btcd_listen' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['0.0.0.0:8333']
    Options    :
      Examples:  ['0.0.0.0'] | [':8333'] | ['[::]:8333']
      None    : []

`btcd_monitor_monit_state`

    Description: Control the 'btcd_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`btcd_nftables_filter_rule`

    Description: Define the 'btcd_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
      add rule ip6 filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8334 counter accept comment "json-rpc from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8334 counter accept comment "json-rpc from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 8333 counter accept comment "bitcoin from any"
        add rule ip filter OUTPUT ct state new tcp dport 8333 counter accept comment "bitcoin to any"

`btcd_nftables_state`

    Description: Control the 'btcd_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`btcd_rpclisten`

    Description: Define the 'btcd_rpclisten' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['127.0.0.1:8334']
    Options    :
      Examples:  ['0.0.0.0'] | [':8334'] | ['[::]:8334']
      None    : []

`btcd_rpcuser`

    Description: Define the ''btcd_rpcuser option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi' | 'hal' | 'len' | 'nick' | 'adam' | 'david'
      None    : ''

`btcd_rpcpass`

    Description: Define the 'btcd_rpcpass' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '5mQ.2JAqabmF8_P2fj7H6W,sc4$a!9Kc' | 'ptRWu3s,p.QJhs3Qu_Sp!45AG9S_L2jf'
      None    : ''

`btcd_version`

    Description: Define the 'btcd_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.23.3`
    Options    :
      Examples: '0.23.0' | '0.23.1'

## Conflicts

## Dependencies

### Archives

`btcd`

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
