install = node['remote_syslog2']['install']

remote_file "#{install['local_path']}/#{install['deb_name']}" do
  source "#{install['remote_path']}/#{install['deb_name']}"
  mode '0644'
  not_if { ::File.exists?("#{install['remote_path']}/#{install['deb_name']}") }
end

dpkg_package 'remote_syslog2' do
  source "#{install['local_path']}/#{install['deb_name']}"
  action :install
end
