# == Class varnish::install
#
class varnish::install(
  $varnish_package_name = $varnish::params::package_name
) {
  include varnish::params

  package { $varnish_package_name :
    ensure => $varnish::package_ensure,
  }
}
