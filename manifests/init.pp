# == Class: memcached
#
# Full description of class memcached here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'memcached':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class memcached (
  $package_name       = $memcached::params::package_name,
  $package_ensure     = $memcached::params::package_ensure,
  $service_ensure     = $memcached::params::service_ensure,
  $service_enable     = $memcached::params::service_enable,
  $service_flags      = $memcached::params::service_flags,
  $service_hasrestart = $memcached::params::service_hasrestart,
) inherits memcached::params {

  class { memcached::install:
    package_name   => $package_name,
    package_ensure => $package_ensure,
  }

  class { memcached::service:
    service_ensure     => $service_ensure,
    service_enable     => $service_enable,
    service_flags      => $service_flags,
    service_hasrestart => $service_hasrestart,
  }

  Class['memcached::install'] ->
  Class['memcached::service']
}
