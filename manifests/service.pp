# Private class, do not use directly.
# Takes care of managing the service.

class memcached::service (
  $service_ensure,
  $service_enable,
  $service_flags,
  $service_hasrestart,
) {
  service { 'memcached':
    ensure     => $service_ensure,
    enable     => $service_enable,
    flags      => $service_flags,
    hasrestart => $service_hasrestart,
  }
}
