#!/bin/bash
sudo dnf install -y php-fpm php-common php-opcache php-cli php-pear php-mbstring php-gd php-memcache php-memcached php-mcrypt php-xml php-pdo php-pgsql php-mysqlnd php-pecl-redis php-pecl-mongodb

sudo systemctl enable php-fpm.service
