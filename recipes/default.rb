
include_recipe "shorewall::#{node['shorewall']['install_method']}"

service 'shorewall' do
  supports status: true, restart: true, force_reload: true
  action :start
end
