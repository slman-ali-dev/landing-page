#!/bin/bash

echo "changing directory to greenlight"
cd /var/www/greenlightSSH/greenlight

echo "down"
sudo docker-compose down

echo "rebuild"
sudo ./scripts/image_build.sh mhara release-v2

echo "up"
sudo docker-compose up -d

exit 0
