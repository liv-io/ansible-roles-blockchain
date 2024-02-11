# ansible-roles-blockchain

<!-- shields.io -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![BSD License][license-shield]][license-url]

## Index

* [About](#about)
  * [Features](#features)
  * [Support](#support)
  * [Dependencies](#dependencies)
* [License](#license)
* [Credits](#credits)
* [Appendix](#appendix)

## About

`ansible-roles-blockchain` is a collection of well curated Ansible roles for the Debian Linux distribution. All Ansible roles are licensed under the Simplified BSD License.

### Features

* Configurations follow the secure-by-default principle
* Roles are mostly self-contained and dependencies avoided
* Roles and services support multiple states (install, remove, enable, disable, inactive)
* Scripts and cronjobs support multiple states (enable, disable)
* Services can be monitored with Monit and exported via monit_exporter to Prometheus
* Scripts support Email and Prometheus monitoring
* Logs can be forwarded with syslog to Loki
* Roles can proxy HTTP/HTTPS traffic through Squid forward proxy
* Host-based firewall restricts ingress and egress traffic by default
* Restic and rest-server are available as backup solution
* Prometheus has built-in alerting rules and Grafana dashboards
* Loki has built-in alerting rules and Grafana dashboards
* Parameters are documented with examples
* Changes adhere to semantic versioning guidelines
* Roles contain changelog

### Support

The following operating systems are supported:
* Debian 11
* Debian 12

### Dependencies

The Ansible control machine depends on:
* [Ansible](https://github.com/ansible/ansible) >= 2.15.0

The Ansible managed node depends on:
* [Python](https://github.com/python/cpython) >= 3.10.0

## License

Distributed under the Simplified BSD License.

See `LICENSE` file for more information.

## Credits

See `CREDITS` file for more information.

## Appendix

<!-- shields.io -->
[contributors-shield]: https://img.shields.io/github/contributors/liv-io/ansible-roles-blockchain.svg?style=flat
[contributors-url]: https://github.com/liv-io/ansible-roles-blockchain/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/liv-io/ansible-roles-blockchain.svg?style=flat
[forks-url]: https://github.com/liv-io/ansible-roles-blockchain/network/members
[stars-shield]: https://img.shields.io/github/stars/liv-io/ansible-roles-blockchain.svg?style=flat
[stars-url]: https://github.com/liv-io/ansible-roles-blockchain/stargazers
[issues-shield]: https://img.shields.io/github/issues/liv-io/ansible-roles-blockchain.svg?style=flat
[issues-url]: https://github.com/liv-io/ansible-roles-blockchain/issues
[license-shield]: https://img.shields.io/github/license/liv-io/ansible-roles-blockchain.svg?style=flat
[license-url]: https://github.com/liv-io/ansible-roles-blockchain/blob/master/LICENSE
