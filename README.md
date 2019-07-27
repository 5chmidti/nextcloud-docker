# nextcloud-docker
missing: .env w/ environment variables used in docker-compose.yml, should be your own anyway
```
NEXTCLOUD_HTTP_PORT=
NEXTCLOUD_PATHPREFIX=/abc //only if using traefik, my.config.php overwritewebroot needs to be the same, delete if not needed
MYSQL_ROOT_PASSWORD=
MYSQL_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
```

## added cron job in dockerfile not working for some reason + some php errors in the docker logs

## run
don't forget .env variables used in docker-compose.yml

`source .env`

`sudo docker-compose up -d --build`

#### rpi-mariadb image for raspberry pi, change to other database image per doc on [nextcloud-docker](https://github.com/nextcloud/docker) if needed


## building own image ontop of the nextcloud image with:
  - supervisord for cronjobs from examples@[nextcloud-docker](https://github.com/nextcloud/docker)
  - my.config.php php [configuration](https://docs.nextcloud.com/server/13/admin_manual/configuration_server/config_sample_php_parameters.html?highlight=config)
  - timezone
  

## composing container:
if not using traefik, just delete all labels regarding traefik and the network discovery

nextcloud:
  - persistent data: data,config,apps (custom_apps)
  - traefik

db:
  - persistent data: db
  - ./config.cnf as additional configuration of mysql for better performance, probably needs changing depending on usecase
