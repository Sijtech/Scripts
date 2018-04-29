#!/bin/bash
#my basic setup
aptitude install apache2 mariadb-server php7.2 mysql-workbench
#requirements for Atom.io editor
apt-get install aptitude git gconf2 gconf-service python
#needed for PHP access on MariaDB
apt-get install php7.2-mysql libapache2-mod-php
#I install Atom, Chrome and Opera from .deb packages
