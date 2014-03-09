# puppet-tomcat7

A very quick stab at a Puppet module to configure Tomcat 7 with multiple virtual hosts

## Example

This little snippet will take of installing the tomcat7 package, starting the service, and setting up webapp directories for each virtual host you specify:

    class { "tomcat7":
      vhosts => ['kidsbank.itzg.me', 'batt.itzg.me']
    }

## Caveats

* Only works on Ubuntu/Debian
* Only supports Tomcat 7.x (as the name implies)
* Super simple at this -- manages the `server.xml` and `/etc/default/tomcat7` files only

