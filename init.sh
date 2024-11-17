#!/usr/bin/env bash

wp core download
wp config create --dbprefix="$DB_PREFIX" \
                 --dbname="$DB_NAME" \
                 --dbuser="$DB_USER" \
                 --dbpass="$DB_PASSWORD" \
                 --dbhost="wordpress_db"
wp db create
wp core install --url="http://localhost:$WP_PORT" \
                --title="Example" \
                --admin_user="$WP_USER" \
                --admin_password="$WP_PASSWORD" \
                --admin_email="email@example.com"
wp post generate --count=50
