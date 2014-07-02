Description
===========

Installs and configures shorewall

Requirements
============

Should work anywhere.

Attributes
==========

### shorewall

* `node['shorewall']['dir']` - Location to install shorewall (defaults to /etc/shorewall)
* `node['shorewall']['init_file_dir']` - Location to install init file (defaults to /etc/default)
* `node['shorewall']['blocked_net_ips']` - An array of internet ip-addresses that you would like to block on your open_net_ports, can also be range. For more information see [this page](http://shorewall.net/manpages/shorewall-rules.html)
* `node['shorewall']['blocked_loc_ips']` - An array of local ip-addresses that you would like to block on your open_loc_ports, can also be a range. See above link.
* `node['shorewall']['base_net_rule']` - The base shorewall rule for accepting requests from the net
* `node['shorewall']['base_loc_rule']` - The base shorewall rule for accepting requests from local connections
* `node['shorewall']['open_net_ports']` - An array of ports to open for internet requests, defaults to ["22", "80", "443"]. Can also be a range of ports, for more information see [this page](http://shorewall.net/manpages/shorewall-rules.html)
* `node['shorewall']['open_loc_ports']` - An array of ports to open for local requests, defaults to []

Usage
=====

Add the "shorewall" recipe to your node's run list or role, or include the recipe in another cookbook.


License and Author
==================

- Author: Louis Alridge <louis@hiplogiq.com>

- Copyright 2014, Hiplogiq, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
