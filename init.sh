#!/bin/bash

# create a new project using git@github.com:sgrichards/migl-make.git

# open terminal tools/terminal

# install box-parts
parts install php5 php5-apache2 php5-pdo-mysql php5-gd mysql php5-curl composer php5-xdebug;
composer global require drush/drush:6.*;
. ~/.bash_profile;

# start services
parts start apache2 mysql;

# download Drupal, contrib and libraries
drush make default.make -y;

# manually add a database of your site
# mysql -u root -p
# CREATE DATABASE drupal;

