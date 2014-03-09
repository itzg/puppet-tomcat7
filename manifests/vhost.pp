define tomcat7::vhost ($host = $title) {
  require tomcat7::sites

  file {"$tomcat7::sites::dir/$host":
    ensure => directory,
    owner => 'tomcat7',
    group => 'tomcat7',
  }
  
}
