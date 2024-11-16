#!/usr/bin/env bash

wp core download
wp config create --dbprefix=wp_ \
                 --dbname=wordpress \
                 --dbuser=root \
                 --dbpass=password \
                 --dbhost=wordpress_db
wp db create
wp core install --url="http://localhost:3000" \
                --title="Development" \
                --admin_user="admin" \
                --admin_password="admin" \
                --admin_email="email@example.com"
wp post generate --count=50
wp user generate --count=10