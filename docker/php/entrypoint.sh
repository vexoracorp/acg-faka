#!/bin/bash
set -e

mkdir -p /var/www/html/runtime/view/cache /var/www/html/runtime/view/compile
chown -R www-data:www-data /var/www/html/runtime
chown -R www-data:www-data /var/www/html/kernel/Install
chown -R www-data:www-data /var/www/html/config

exec apache2-foreground
