#!/bin/bash
sudo docker exec --user www-data $(sudo docker ps -q -f name=nextcloud_app) php occ config:system:set overwritewebroot --value=/nextcloud
sudo docker exec --user www-data $(sudo docker ps -q -f name=nextcloud_app) php occ config:system:set trusted_domains 1 --value=192.168.178.37
sudo docker restart $(sudo docker ps -q -f name=nextcloud_app)