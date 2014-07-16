
node['shorewall']['setup_files'].each do |dep|
  template "#{node['shorewall']['dir']}/#{dep}" do
    source "#{dep}.erb"
    owner  'root'
    group  node['root_group']
    mode   '0644'
    cookbook 'shorewall'
    notifies :reload, 'service[shorewall]'
    variables(
      base_net_rule:   node['shorewall']['base_net_rule'],
      base_loc_rule:   node['shorewall']['base_loc_rule'],
      open_net_ports:  node['shorewall']['open_net_ports'],
      open_loc_ports:  node['shorewall']['open_loc_ports'],
      blocked_net_ips: node['shorewall']['blocked_net_ips'],
      blocked_loc_ips: node['shorewall']['blocked_loc_ips']
    )
  end
end

node['shorewall']['init_files'].each do |dep|
  template "#{node['shorewall']['init_file_dir']}/#{dep}" do
    source "#{dep}.erb"
    owner  'root'
    group  node['root_group']
    mode   '0644'
    cookbook 'shorewall'
    notifies :restart, 'service[shorewall]'
  end
end