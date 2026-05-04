#!/bin/bash
set -e

mkdir -p /var/www/html/runtime/view/cache /var/www/html/runtime/view/compile
chown -R www-data:www-data /var/www/html

exec apache2-foreground
