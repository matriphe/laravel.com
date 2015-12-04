#!/bin/bash

cd /Volumes/data/Development/php/documentation/laravel/build/sami

rm -rf /Volumes/data/Development/php/documentation/laravel/build/sami/build
rm -rf /Volumes/data/Development/php/documentation/laravel/build/sami/cache

# Run API Docs
git clone https://github.com/laravel/framework.git /Volumes/data/Development/php/documentation/laravel/build/sami/laravel

php /Volumes/data/Development/php/documentation/laravel/vendor/bin/sami.php update /Volumes/data/Development/php/documentation/laravel/build/sami/sami.php

cp -r /Volumes/data/Development/php/documentation/laravel/build/sami/build/* /Volumes/data/Development/php/documentation/laravel/public/api

rm -rf /Volumes/data/Development/php/documentation/laravel/build/sami/build
rm -rf /Volumes/data/Development/php/documentation/laravel/build/sami/cache

# Cleanup
rm -rf /Volumes/data/Development/php/documentation/laravel/build/sami/laravel
