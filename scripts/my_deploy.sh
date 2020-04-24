#!/bin/bash

echo "changing directory to greenlight"
cd /var/www/github/quiq

echo "down"
sudo docker-compose down

echo "rebuild"
sudo ./scripts/image_build.sh quiq release-v2

echo "up"
sudo docker-compose up -d

exit 0
