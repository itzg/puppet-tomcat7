class etc_default {
  file { "/etc/default/tomcat7":
    ensure => present,
    content => template('tomcat7/default.erb')
  }
}
