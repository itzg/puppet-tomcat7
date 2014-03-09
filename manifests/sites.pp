class tomcat7::sites {
  $dir = "$tomcat7::catalina_base/sites"

  file { $dir:
    ensure => directory,
    owner => 'tomcat7',
    group => 'tomcat7',
  }
}
