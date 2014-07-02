
case node['platform_family']
when 'debian'
  include_recipe 'apt::default'

  apt_repository 'shorewall' do
    repo_name    "shorewall"
    uri          node['shorewall']['upstream_repository']
    distribution node['lsb']['codename']
    components   %w(main)
  end
end