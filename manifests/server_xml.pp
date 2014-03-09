class tomcat7::server_xml {

  file {"/etc/tomcat7/server.xml":
    ensure => present,
    content => template('tomcat7/server.xml.erb')
  }
}
