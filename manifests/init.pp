class tomcat7 (
    $catalina_base = '/var/lib/tomcat7',
    $vhosts = []) {

  package { 'tomcat7':
    ensure => latest,
  }

  service { 'tomcat7':
    ensure => running,
    enable => true,
    subscribe => File["/etc/tomcat7/server.xml"]
  }

  include etc_default
  include server_xml

  vhost { $vhosts: 
  }
}
