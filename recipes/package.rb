
#[TODO] add support for non-debian servers
if platform_family?('debian')
  include_recipe 'shorewall::repo'
else
  fail ArgumentError, "Sorry, this shorewall cookbook does not support #{platform_family} at this time."
end

package node['shorewall']['package_name'] do
  #notifies :reload, 'ohai[reload_shorewall]', :immediately
  not_if 'which shorewall'
end

service 'shorewall' do
  supports status: true, restart: true, force_reload: true
  action :enable
end

include_recipe 'shorewall::files'