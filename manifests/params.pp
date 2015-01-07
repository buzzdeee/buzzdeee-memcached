# Private class, do not use directly.
# The parameters that drive this module.
class memcached::params {
  $package_name       = 'memcached'
  $package_ensure     = 'installed'
  $service_enable     = true
  $service_ensure     = 'running'
  $service_flags      = '-l 127.0.0.1 -u _memcached -P /var/run/memcached.pid'
  #$service_hasrestart = true
}
