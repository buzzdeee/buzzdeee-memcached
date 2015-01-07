# Private class, do not use directly.
# Takes care about the package.

class memcached::install (
  $package_name,
  $package_ensure,
) {
  package { $package_name:
    ensure => $package_ensure,
  }
}
