#!/bin/bash
sudo docker exec -it --user 0 nextcloud chown -R www-data:www-data .
sudo docker exec -it --user 0 nextcloud touch config/CAN_INSTALL