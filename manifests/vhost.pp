define tomcat7::vhost ($host = $title) {
  require tomcat7::sites
  include stdlib

  $appBase = "$tomcat7::sites::dir/$host"

  file {$appBase:
    ensure => directory,
    owner => 'tomcat7',
    group => 'tomcat7',
  }

}
