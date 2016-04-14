default['remote_syslog2']['config'] = {
  files: [],
  exclude_files: [],
  exclude_patterns: [],
  hostname: node['hostname'],
  destination: {
    host: 'logs.papertrailapp.com',
    port: 12345
  }
}

# These attributes probably shouldn't be changed unless they specifically need to be
default['remote_syslog2']['config_file'] = '/etc/remote_syslog2.yml'
default['remote_syslog2']['pid_dir'] = '/var/run'
default['remote_syslog2']['install']['deb_name'] = 'remote-syslog2_0.17_amd64.deb'
default['remote_syslog2']['install']['remote_path'] = 'https://s3.amazonaws.com/repository-remedy'
default['remote_syslog2']['install']['local_path'] = '/usr/local/src'
