## Vagrant with Ansible Oracle 11gR2 silent install

Download images from http://www.oracle.com/technetwork/database/enterprise-edition/downloads/112010-linx8664soft-100572.html

After installation, you can connect to https://localhost:1158/em with user `SYSTEM` and password `pa55w0rd`.

SSH tunneling with `vagrant ssh -- -L 1158:localhost:1158`

### X11
`vagrant ssh -- -Y` does not work when changing to `oracle` with `su`.

    $ ssh oracle@127.0.0.1 -i .vagrant/machines/default/virtualbox/private_key -p 2222 -X

### References

* http://www.server-world.info/en/note?os=CentOS_6&p=oracle11g&f=1
* [CentOS 6.2](http://eduardo-lago.blogspot.nl/2012/01/how-to-install-oracle-11g-database.html)
* [CentOS 6](http://blog.milczarek.it/2012/09/install-oracle-database-11g-r2-on-centos-6/)
* [CentOS 7](http://dbaora.com/install-oracle-11g-release-2-11-2-on-centos-linux-7/)
* [12c](https://docs.oracle.com/cd/E26370_01/doc.121/e26358/dbinstall.htm)
