# pod_rusty_kaspa

## Description

Kaspa full-node and related libraries in the Rust programming language.
This is a stable version at the initial rollout phases.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_rusty_kaspa
  vars:
    pod_rusty_kaspa_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_rusty_kaspa
  vars:
    pod_rusty_kaspa_state: 'enable'
    pod_rusty_kaspa_pod_rusty_kaspa_version: '0.14.1-1'
    pod_rusty_kaspa_proxy: 'http://proxy.example.com:3128'
    pod_rusty_kaspa_registry_address: 'registry.example.com'
    pod_rusty_kaspa_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_rusty_kaspa_registry_username: 'registry'
    pod_rusty_kaspa_rusty_kaspa_externalip: '1.2.3.4'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_rusty_kaspa
  vars:
    pod_rusty_kaspa_state: 'disable'
    pod_rusty_kaspa_pod_rusty_kaspa_version: '0.14.1-1'
    pod_rusty_kaspa_proxy: 'http://proxy.example.com:3128'
    pod_rusty_kaspa_registry_address: 'registry.example.com'
    pod_rusty_kaspa_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_rusty_kaspa_registry_username: 'registry'
    pod_rusty_kaspa_rusty_kaspa_externalip: '1.2.3.4'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_rusty_kaspa
  vars:
    pod_rusty_kaspa_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_rusty_kaspa
  vars:
    pod_rusty_kaspa_state: 'inactive'
```

## Parameters

### Role

`pod_rusty_kaspa_state`

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

`pod_rusty_kaspa_log_driver`

    Description: Define the 'pod_rusty_kaspa_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_rusty_kaspa_monitor_monit_state`

    Description: Control the 'pod_rusty_kaspa_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_rusty_kaspa_nftables_filter_rule`

    Description: Define the 'pod_rusty_kaspa_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc from any"
      add rule ip6 filter INPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc from any"
      add rule ip filter OUTPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc to any"
      add rule ip filter INPUT ct state new tcp dport 16111 counter accept comment "kaspa network from any"
      add rule ip6 filter INPUT ct state new tcp dport 16111 counter accept comment "kaspa network from any"
      add rule ip filter OUTPUT ct state new tcp dport 16111 counter accept comment "kaspa network to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 16111 counter accept comment "kaspa network to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc from any"
        add rule ip filter OUTPUT ct state new tcp dport 16110 counter accept comment "kaspa grpc to any"
        add rule ip filter INPUT ct state new tcp dport 16111 counter accept comment "kaspa network from any"
        add rule ip filter OUTPUT ct state new tcp dport 16111 counter accept comment "kaspa network to any"

`pod_rusty_kaspa_nftables_state`

    Description: Control the 'pod_rusty_kaspa_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_rusty_kaspa_proxy`

    Description: Define the 'pod_rusty_kaspa_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_rusty_kaspa_registry_address`

    Description: Define the 'pod_rusty_kaspa_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_rusty_kaspa_registry_password`

    Description: Define the 'pod_rusty_kaspa_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_rusty_kaspa_registry_username`

    Description: Define the 'pod_rusty_kaspa_registry_username' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user' | 'registry'

`pod_rusty_kaspa_rusty_kaspa_addpeer`

    Description: --addpeer
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ""
    Options    :
      Examples: "10.1.1.10:16111" | "kas.example.com:16111 kas.example.org:16111"
      None    : ""

`pod_rusty_kaspa_rusty_kaspa_appdir`

    Description: --appdir
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "-/var/local/rusty-kaspa/data"
    Options    :
      Examples: "/mnt/data"

`pod_rusty_kaspa_rusty_kaspa_disable_upnp`

    Description: --disable-upnp
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_externalip`

    Description: --externalip
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ""
    Options    :
      Examples: "1.2.3.4" | "5.6.7.8"
      None    : ""

`pod_rusty_kaspa_rusty_kaspa_listen`

    Description: --listen
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ""
    Options    :
      Examples: "127.0.0.1" | "1.2.3.4" | "5.6.7.8:16111"

`pod_rusty_kaspa_rusty_kaspa_loglevel`

    Description: --loglevel
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : "info"
    Options    :
      Examples: "off" | "error" | "warn" | "info" | "debug" | "trace"

`pod_rusty_kaspa_rusty_kaspa_nodnsseed`

    Description: --nodnsseed
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : false
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_nogrpc`

    Description: --nogrpc
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_nologfiles`

    Description: --nologfiles
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_ram_scale`

    Description: --ram-scale
    Required   : False
    Value      : Arbitrary
    Type       : Float
    Default    : 0.3
    Options    :
      Examples: 0.3 | 0.4 | 1.0

`pod_rusty_kaspa_rusty_kaspa_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_rusty_kaspa_rusty_kaspa_rpclisten`

    Description: --listen
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ""
    Options    :
      Examples: "127.0.0.1" | "1.2.3.4" | "5.6.7.8:16111"

`pod_rusty_kaspa_rusty_kaspa_sanity`

    Description: --sanity
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : false
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_utxoindex`

    Description: --utxoindex
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : false
    Options    : true | false

`pod_rusty_kaspa_rusty_kaspa_version`

    Description: Define the pod_rusty_kaspa container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.14.1-2'
    Options    :
      Examples: '0.13.6-1'

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
