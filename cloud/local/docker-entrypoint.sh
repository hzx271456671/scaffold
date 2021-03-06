#!/bin/bash
# auther: ge2x3k2@gmail.com

#ssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key

sed -i 's/listen = 127.0.0.1:9000/listen = [::]:9000/p' /etc/php-fpm.d/www.conf
sed -i '/listen.allowed_clients = 127.0.0.1/d' /etc/php-fpm.d/www.conf
/usr/sbin/php-fpm -c /etc/php.ini -y /etc/php-fpm.conf

ln -s /opt/openresty/nginx/sbin/nginx /usr/local/bin/
nginx -c /etc/nginx/nginx.conf -g 'daemon off;'