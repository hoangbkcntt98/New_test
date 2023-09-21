#!/usr/bin/env bash
echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."sd
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force
