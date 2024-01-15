# pod_btcd

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
    - role: pod_btcd
  vars:
    pod_btcd_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_btcd
  vars:
    pod_btcd_state: 'enable'
    pod_btcd_btcd_addpeer: 'btc.example.com:8333 btc.example.org:8333'
    pod_btcd_btcd_rpclisten: '0.0.0.0:8334'
    pod_btcd_btcd_rpcpass: 'J4eQwP_vkMnB8A!s9pRp'
    pod_btcd_btcd_rpcuser: 'satoshi'
    pod_btcd_btcd_version: '0.24.0-5'
    pod_btcd_proxy: 'http://proxy.example.com:3128'
    pod_btcd_registry_address: 'registry.example.com'
    pod_btcd_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_btcd_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_btcd
  vars:
    pod_btcd_state: 'disable'
    pod_btcd_btcd_addpeer: 'btc.example.com:8333 btc.example.org:8333'
    pod_btcd_btcd_rpclisten: '0.0.0.0:8334'
    pod_btcd_btcd_rpcpass: 'J4eQwP_vkMnB8A!s9pRp'
    pod_btcd_btcd_rpcuser: 'satoshi'
    pod_btcd_btcd_version: '0.24.0-5'
    pod_btcd_proxy: 'http://proxy.example.com:3128'
    pod_btcd_registry_address: 'registry.example.com'
    pod_btcd_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_btcd_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_btcd
  vars:
    pod_btcd_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_btcd
  vars:
    pod_btcd_state: 'inactive'
```

## Parameters

### Role

`pod_btcd_state`

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

`pod_btcd_btcd_addpeer`

    Description: --addpeer
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ''
    Options    :
      Examples: '10.1.1.10:8333' | 'btc.example.com:8333 btc.example.org:8333'
      None    : ''

`pod_btcd_btcd_configfile`

    Warning    : --configfile= is broken, needs fixing upstream
    Description: --configfile
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/btcd/config/btcd.conf'
    Options    :
      Examples: '/mnt/config/btcd.conf'

`pod_btcd_btcd_datadir`

    Warning    : --datadir= is broken, needs fixing upstream
    Description: --datadir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/db'

`pod_btcd_btcd_debuglevel`

    Description: --debuglevel
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'trace' | 'debug' | 'info' | 'warn' | 'error' | 'critical'

`pod_btcd_btcd_externalip`

    Description: --externalip
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ''
    Options    :
      Examples: '1.2.3.4' | '1.2.3.4 5.6.7.8'
      None    : ''

`pod_btcd_btcd_listen`

    Description: --listen
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : '0.0.0.0:8333'
    Options    :
      Examples: '127.0.0.1:8333' | '1.2.3.4:8333 5.6.7.8:8333'

`pod_btcd_btcd_logdir`

    Warning    : --logdir= is broken, needs fixing upstream
    Description: --logdir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/btcd/log'
    Options    :
      Examples: '/mnt/log'

`pod_btcd_btcd_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_btcd_btcd_rpclisten`

    Description: --rpclisten
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : '127.0.0.1:8334'
    Options    :
      Examples: '0.0.0.0:8334' | '1.2.3.4:8334 5.6.7.8:8334'
      None    : ''

`pod_btcd_btcd_rpcpass`

    Description: --rpcpass
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'q-HrBk83.5w9wuhFt,nP' | 'J4eQwP_vkMnB8A!s9pRp'
      None    : ''

`pod_btcd_btcd_rpcuser`

    Description: --rpcuser
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'satoshi' | 'hal' | 'len' | 'nick' | 'adam' | 'david'
      None    : ''

`pod_btcd_btcd_version`

    Description: Define the btcd container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.24.0-6'
    Options    :
      Examples: ''

`pod_btcd_log_driver`

    Description: Define the 'pod_btcd_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_btcd_monitor_monit_state`

    Description: Control the 'pod_btcd_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_btcd_proxy`

    Description: Define the 'pod_btcd_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_btcd_registry_address`

    Description: Define the 'pod_btcd_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_btcd_registry_password`

    Description: Define the 'pod_btcd_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_btcd_registry_username`

    Description: Define the 'pod_btcd_registry_username' option.
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
