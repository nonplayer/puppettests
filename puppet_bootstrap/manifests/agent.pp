# Configure puppet agent
class puppet_bootstrap::agent {

#  ini_setting { 'randomize puppet apply time':
#    ensure  => present,
#    path    => $::settings::config,
#    section => 'agent',
#    setting => 'splay',
#    value   => 'true',
#  }

#  if $::puppetversion and versioncmp($::puppetversion, '4.0.0') >= 0 {
#    $agent_package = 'puppet-agent'
#    $agent_service = 'puppet'
#    $agent_bin     = '/opt/puppetlabs/puppet/bin/puppet'
#  } else {
#    $agent_package = 'pe-puppet'
#    $agent_service = 'pe-puppet'
#    $agent_bin     = '/opt/puppet/bin/puppet'
#  }

  package { 'puppet-agent' :
    ensure => 'latest',
    notify => Service['puppet'],
  }

  service { 'puppet' :
    ensure => running,
    enable => true,
  }

  # puppet self-monitoring
#  cron { 'nightly puppet agent run':
#    command => "${agent_bin} resource service ${agent_service} ensure=running enable=true >/dev/null",
#    hour    => '5',
#    minute  => fqdn_rand(60),
#  }
}

