#!/usr/bin/env bash

# Copyright (c) Robert Gallegos 04/08/2025

# b. i. Start nginx service
echo "starting nginx..."
service nginx start

# Give nginx a bit of time to start
sleep 2

# Prepare to modify all HTML files in /var/www/html/
echo "Updating HTML files..."

# b. ii. Use sed to replace "Welcome to nginx" with
# "Welcome to <YOUR_FIRST_NAME>'s page" in /var/www/html/*.html
# inside the docker instance
sed -i 's/Welcome to nginx/Welcome to Robert\x27s page/g' /var/www/html/*.html

# b. iii. Use sed to replace all occurrences of "nginx" in the
# same html file with "nginx (pronounced as EngineX)"
sed -i 's/nginx/nginx (pronounced as EngineX)/g' /var/www/html/*.html

# b. iv. Restart nginx service
echo "Restarting nginx..."
service nginx restart

# Keep the container running indefinitely so changes can be viewed
tail -f /dev/null
