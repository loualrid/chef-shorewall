
default['shorewall']['package_name']  = 'shorewall'
default['shorewall']['dir']           = '/etc/shorewall'
default['shorewall']['init_file_dir'] = '/etc/default'
default['shorewall']['script_dir']    = '/usr/sbin'

default['shorewall']['install_method'] = 'package'
default['shorewall']['setup_files']    = ['rules', 'zones', 'interfaces', 'policy', 'shorewall.conf']
default['shorewall']['init_files']     = ['shorewall']

default['shorewall']['blocked_net_ips'] = []
default['shorewall']['blocked_loc_ips'] = []
default['shorewall']['base_net_rule']   = 'ACCEPT          net             fw              tcp     '
default['shorewall']['base_loc_rule']   = 'ACCEPT          loc             fw              tcp     '
default['shorewall']['open_net_ports']  = ["22", "80", "443"]
default['shorewall']['open_loc_ports']  = []
