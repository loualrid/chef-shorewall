
case node['platform_family']
#[TODO] Add support for other families
when 'debian'
  case node['platform']
  when 'ubuntu'
    default['shorewall']['upstream_repository'] = "http://mirror.rackspace.com/ubuntu/"
  when 'debian'
    default['shorewall']['upstream_repository'] = "https://packages.debian.org/"
  end
end